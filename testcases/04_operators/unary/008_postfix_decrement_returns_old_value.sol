// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: postfix x-- yields the OLD value and decrements afterwards.
// EXPECTED: f(5) == (5, 4).
contract PostfixDecrementReturnsOldValue {
    function f(uint256 x) public pure returns (uint256, uint256) {
        uint256 y = x--;
        return (y, x);
    }
}
