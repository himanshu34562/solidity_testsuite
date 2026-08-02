// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: division by zero reverts with Panic(0x12) regardless of
// checked/unchecked block — this is NOT an overflow check, it's a
// distinct guard that unchecked{} does NOT suppress.
contract UintDivisionByZero {
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        return a / b; // reverts if b == 0
    }
}