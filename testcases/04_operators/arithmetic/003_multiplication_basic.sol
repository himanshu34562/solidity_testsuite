// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline multiplication on unsigned and signed integers.
// Signed multiplication follows normal sign rules (negative * negative
// = positive).
contract MultiplicationBasic {
    function mulU256(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    function mulU8(uint8 a, uint8 b) public pure returns (uint8) {
        return a * b;
    }

    function mulI256(int256 a, int256 b) public pure returns (int256) {
        return a * b;
    }
}