#!/bin/bash
# Runner specific to compiler_settings/ — this folder tests solc FLAGS,
# not just individual files, so each file gets run with multiple flag
# combinations rather than a single default compile.
#
# Usage: ./run_settings.sh [solc-version]

set -uo pipefail

if [ -n "${1:-}" ]; then
  solc-select use "$1" || { echo "Failed to switch to solc $1"; exit 1; }
fi

echo "Using solc version: $(solc --version | grep Version)"
echo "==========================================="

mkdir -p logs

run_case() {
  local label="$1"
  shift
  echo ">>> $label"
  echo "    cmd: solc $*"
  if solc "$@" > "logs/${label}.out" 2>"logs/${label}.err"; then
    echo "    RESULT: PASS"
  else
    echo "    RESULT: FAIL (see logs/${label}.err)"
  fi
  echo
}

# ---------- 001: optimizer on vs off ----------
run_case "001_no_optimizer" --bin 001_optimizer_sensitive.sol -o out_no_opt --overwrite
run_case "001_with_optimizer" --bin --optimize --optimize-runs 200 001_optimizer_sensitive.sol -o out_opt --overwrite

# ---------- 002: viaIR required for stack too deep ----------
run_case "002_no_viair_expected_fail" --bin 002_stack_too_deep_requires_viair.sol
run_case "002_viair_only_expected_fail" --bin --via-ir 002_stack_too_deep_requires_viair.sol
run_case "002_viair_with_optimize_expected_pass" --bin --via-ir --optimize 002_stack_too_deep_requires_viair.sol

# ---------- 003: evm-version / PUSH0 ----------
run_case "003_evm_istanbul" --bin --evm-version istanbul 003_evm_version_push0.sol
run_case "003_evm_london"   --bin --evm-version london   003_evm_version_push0.sol
run_case "003_evm_paris"    --bin --evm-version paris    003_evm_version_push0.sol
run_case "003_evm_shanghai" --bin --evm-version shanghai 003_evm_version_push0.sol
run_case "003_evm_cancun_expected_fail_on_old_solc" --bin --evm-version cancun 003_evm_version_push0.sol

# ---------- 004: basefee requires London+ ----------
run_case "004_evm_istanbul_expected_fail" --bin --evm-version istanbul 004_evm_version_basefee.sol
run_case "004_evm_london_expected_pass"   --bin --evm-version london   004_evm_version_basefee.sol

echo "==========================================="
echo "Done. See ./logs/ for individual outputs."
