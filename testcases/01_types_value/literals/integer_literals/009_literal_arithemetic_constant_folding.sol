// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: arithmetic between pure literals must be fully constant-
// folded at compile time -- the resulting IR/bytecode should contain
// only the final computed value, with NO runtime addition/multiplication
// instructions for this expression.
contract LiteralArithmeticConstantFolding {
    uint256 public value = (2 + 3) * 10; // must fold to 50 at compile time
}