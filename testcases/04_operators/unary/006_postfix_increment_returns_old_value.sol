// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: postfix x++ yields the OLD value and increments afterwards.
// EXPECTED: f(5) == (5, 6) -- y keeps the old value, x is incremented.
contract PostfixIncrementReturnsOldValue {
    function f(uint256 x) public pure returns (uint256, uint256) {
        uint256 y = x++;
        return (y, x);
    }
}
