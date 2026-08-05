# Solidity → LLVM IR Conformance Test Suite

## What this project is

A structured, exhaustive set of Solidity source files (`.sol`) organized by
language feature, intended to validate a Solidity → LLVM IR converter.

Each test case targets one specific, isolated language behavior — a type
width, an operator, a conversion rule, a panic condition, a storage-layout
rule, etc. — so that when the converter is run against them, any mismatch
between solc's own semantics and the converter's LLVM IR output can be
traced back to a precise cause rather than a large, ambiguous test.

Every `.sol` file is first verified to compile correctly (or fail correctly,
for intentional negative tests) against the reference Solidity compiler
(`solc`) before being considered part of the suite. This confirms the test
cases themselves are valid Solidity before they're ever used to check IR
conversion correctness.

## Why this exists

There is no widely available, exhaustive, categorized test suite focused
specifically on Solidity → LLVM IR conformance. Existing Solidity test
suites (e.g. solc's own tests) validate EVM bytecode correctness, not IR
shape. This suite is meant to fill that gap and be independently reusable
by anyone building a Solidity frontend that targets LLVM.

## Overall plan

1. **Structure** — lay out an exhaustive folder hierarchy covering every
   major Solidity language feature (types, operators, control flow,
   functions, OOP/inheritance, events/errors, external calls, low-level
   EVM features, globals, modularity, version-specific behavior, and
   edge cases).
2. **Populate** — write minimal, isolated `.sol` test cases per feature,
   one folder at a time, each verified against `solc` before being
   committed.
3. **Verify** — for each folder, use a runner script (`run_local.sh`, or
   a folder-specific variant like `run_settings.sh` for flag-driven
   cases) to batch-compile every file and confirm expected pass/fail
   behavior.
4. **Document findings** — any non-obvious solc behavior discovered while
   writing test cases (e.g. compile-time vs runtime checks, padding
   rules, flag interactions) is documented directly in the relevant
   test file's comments, so the suite itself becomes a reference.
5. **Attach to converter** — once a critical mass of categories exist,
   pair each `.sol` file with expected LLVM IR (`.ll`) output generated
   by the actual Solidity → LLVM IR converter under test, and diff
   against future converter output to catch regressions.
6. **Automate** — integrate the suite into the converter's own repo
   (as a submodule or CI dependency) with GitHub Actions running the
   full suite on every change.

## Folder structure

The suite is organized under `testcases/`, numbered top-level by category
to keep ordering stable:

```
testcases/
├── 00_meta/                    # pragma versions, SPDX, compiler flags
├── 01_types_value/             # uint, int, bool, address, bytesN, enum, UDVTs, literals
├── 02_types_reference/         # string, bytes, arrays, structs, mappings, function types
├── 03_data_locations/          # storage, memory, calldata, layout/packing
├── 04_operators/                # arithmetic, bitwise, shift, checked/unchecked
├── 05_control_flow/            # if/else, loops, break/continue
├── 06_functions/                # visibility, modifiers, constructors, overloading
├── 07_contracts_oop/           # inheritance, interfaces, libraries, virtual/override
├── 08_events_errors_exceptions/ # events, custom errors, require/assert/revert, try/catch
├── 09_external_interaction/    # call, delegatecall, staticcall, send/transfer
├── 10_low_level_evm/           # inline assembly, ABI encode/decode, hashing, create2
├── 11_globals_builtins/        # msg/block/tx properties, gasleft, type()
├── 12_special_variables_units/ # ether/time units, global constants
├── 13_modularity/               # imports, multi-file contracts
├── 14_generics_reuse/          # using-for, operator overloading (UDVTs)
├── 15_version_specific/        # pre-0.8 overflow, transient storage, viaIR-specific
└── 16_edge_cases_stress/       # empty contracts, deep nesting, unicode identifiers
```

Each leaf folder holds paired `.sol` test files, numbered (`001_...`,
`002_...`) for stable ordering. Files documenting intentionally-failing
negative test cases are suffixed `_expected_fail.sol`.

## Verification tooling

- **`run_local.sh`** (project root) — generic runner. Compiles every
  `.sol` file under a given folder against `solc`, reports PASS/FAIL per
  file based on exit code, and logs stdout/stderr per file under `logs/`
  (gitignored, regenerated per run).
  ```
  ./run_local.sh testcases/<folder> [solc-version]
  ```
- **`run_settings.sh`** (per relevant folder, e.g. `compiler_settings/`)
  — used where the test dimension is *compiler flags* rather than file
  content (optimizer on/off, `--via-ir`, `--evm-version`, etc.). Each
  flag combination is run and labeled explicitly, with `_expected_fail`
  / `_expected_pass` suffixes documenting the anticipated outcome.

All verification so far has been run against **solc 0.8.20**
(`0.8.20+commit.a1b79de6`), managed via `solc-select`.

## Progress so far

### Completed and verified categories

| Folder | Files | Status |
|---|---|---|
| `00_meta/pragma_versions/` | 8 | ✅ All pass |
| `00_meta/spdx_license/` | 9 | ✅ 8 pass, 1 intentional expected-fail (duplicate SPDX) |
| `00_meta/compiler_settings/` | 4 `.sol` + `run_settings.sh` | ✅ All pass with correct expected pass/fail per flag combination |
| `01_types_value/uint/` | 14 | ✅ All pass |
| `01_types_value/int/` | 16 | ✅ All pass |
| `01_types_value/bool/` | 9 | ✅ All pass |
| `01_types_value/address/` | 13 | ✅ All pass |
| `01_types_value/bytesN_fixed/` | 14 | ✅ All pass (after 2 fixes — see findings below) |
| `01_types_value/enum/` | 9 | ✅ All pass (after 1 fix — see findings below) |
| `01_types_value/user_defined_value_types/` | 9 | ✅ 6 pass, 3 intentional expected-fail (implicit conversion, no builtin operators, distinct type identity) |

**Total `.sol` files completed and verified so far: 105**

(This count excludes `01_types_value/literals/` — five subfolders,
~29 additional files — which have been drafted but are not yet
committed to the repository.)

### Not yet started

Everything from `02_types_reference/` onward (arrays, structs, mappings,
function types, storage/memory/calldata, operators, control flow,
functions, inheritance/OOP, events/errors, external calls, low-level EVM,
globals, modularity, version-specific behavior, and edge cases) — the
bulk of the suite by file count is still ahead.

## Key findings documented so far

These were discovered empirically while writing and verifying test cases,
and are recorded as comments directly in the relevant `.sol` files:

- **Duplicate SPDX identifiers** in one file are a hard compile **error**
  in solc, not a warning.
- **`--via-ir` alone is not sufficient** to resolve "stack too deep" —
  solc requires `--optimize` enabled together with `--via-ir`.
- **`--evm-version cancun`** is not supported on solc 0.8.20 (requires
  solc ≥0.8.24). `istanbul`/`london`/`paris` all emit identical bytecode
  for PUSH0-independent contracts; `shanghai` is the first version to
  emit the `PUSH0` opcode.
- **Numeric hex literals** (`0x...`) must match the target `bytesN`
  type's width **exactly** — they do not implicitly pad. Only **string
  literals** (and `hex"..."` string-form literals) right-pad when shorter
  than the target `bytesN` width.
- **Enum out-of-range conversion** (`Status(4)` for a 4-member enum) is a
  **compile-time error** when the argument is a literal constant solc can
  statically evaluate. The runtime `Panic(0x21)` ("invalid enum value")
  path only triggers when the value is not known until execution (e.g.
  passed as a function parameter).
- **User-defined value types (UDVTs)** are fully opaque: no implicit
  conversion to/from their underlying type, no inherited arithmetic or
  comparison operators, and two UDVTs sharing the same underlying type
  are still mutually incompatible (distinct type identity, not just
  structural identity).

## Git workflow

- One commit per completed, verified folder.
- Commit messages follow the pattern:
  `"Add <folder> test cases [+ tooling], verified against solc <version>"`,
  with any notable findings summarized in the message body.
- `logs/`, solc output artifacts (`out_no_opt/`, `out_opt/`, `*.bin`,
  `*.abi`), and other scratch output are gitignored — only source `.sol`
  files and runner scripts are tracked.

## Status: in development

This is a work in progress. The folder skeleton is complete; population
and verification are proceeding category by category. No `expected/*.ll`
files exist yet — that stage begins once the underlying Solidity → LLVM
IR converter is available to generate them against this suite.