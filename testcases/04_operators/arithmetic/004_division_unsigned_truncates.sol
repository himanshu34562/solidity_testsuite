// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unsigned integer division discards the remainder (floor of
// a/b for non-negative operands). There is no fractional result.
// EXPECTED: divide(7, 2) == 3, divide(1, 2) == 0.
contract DivisionUnsignedTruncates {
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        return a / b;
    }
}