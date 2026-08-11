// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: Solidity evaluates literal expressions using ARBITRARY
// PRECISION rational arithmetic at compile time -- as long as the
// final result assigned to an integer type is itself an exact integer,
// intermediate fractional values are fine.
contract RationalLiteralExactIntegerResult {
    // (1/2 + 1/2) = 1 exactly, even though 1/2 alone isn't an integer --
    // this must compile successfully since the FINAL result is exact.
    uint256 public value = (1 / 2) + (1 / 2);
}