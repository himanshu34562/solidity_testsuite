// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: Solidity supports rational-number literal EXPRESSIONS at
// compile time (arbitrary precision), as long as the final result is
// an integer when assigned to an integer type. 10 / 2 here is evaluated
// as an exact rational (5), not as integer division with truncation --
// though for this specific case the results are identical either way,
// this documents the compile-time rational evaluation model rather
// than runtime integer division codegen.
contract RationalLiteralExactDivision {
    uint256 public value = 10 / 2; // compile-time constant folds to 5
}