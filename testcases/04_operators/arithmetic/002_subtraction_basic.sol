// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline subtraction on unsigned and signed integers.
// Signed subtraction can produce negative results; unsigned cannot
// (see 013 for the underflow panic).
contract SubtractionBasic {
    function subU256(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }

    function subU8(uint8 a, uint8 b) public pure returns (uint8) {
        return a - b;
    }

    function subI256(int256 a, int256 b) public pure returns (int256) {
        return a - b;   // may be negative
    }
}