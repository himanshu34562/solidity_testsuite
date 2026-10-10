// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: prefix ++x increments first and the expression yields the NEW
// value.
// EXPECTED: f(5) == (6, 6) -- both y and x are 6.
contract PrefixIncrementReturnsNewValue {
    function f(uint256 x) public pure returns (uint256, uint256) {
        uint256 y = ++x;
        return (y, x);
    }
}
