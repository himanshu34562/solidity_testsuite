// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- array literal elements must share a
// COMMON type they can all convert to. Mixing genuinely incompatible
// types (e.g. a bool literal alongside integer literals) has no common
// type and must fail to compile.
// EXPECTED: compile error, "Unable to deduce common type for array
// elements" (or similar).
contract ArrayLiteralMixedIncompatibleTypesExpectedFail {
    function getBadArray() public pure returns (uint256[3] memory) {
        return [uint256(1), 2, true]; // bool has no common type with uint256
    }
}