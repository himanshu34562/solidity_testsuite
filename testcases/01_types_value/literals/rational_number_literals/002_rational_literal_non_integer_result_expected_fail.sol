// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a rational literal expression whose
// final result is NOT an exact integer cannot be assigned to an
// integer type. This is a compile-time error, distinct from runtime
// integer division truncation.
// EXPECTED: compile error, fractional value not implicitly convertible
// to integer type.
contract RationalLiteralNonIntegerResultExpectedFail {
    uint256 public value = 1 / 3; // 0.333... is not an exact integer, should fail
}