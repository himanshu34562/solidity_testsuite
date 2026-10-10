// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: prefix --x decrements first and yields the NEW value.
// EXPECTED: f(5) == (4, 4).
contract PrefixDecrementReturnsNewValue {
    function f(uint256 x) public pure returns (uint256, uint256) {
        uint256 y = --x;
        return (y, x);
    }
}
