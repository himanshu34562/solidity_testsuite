// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline addition on unsigned and signed integers of
// different widths. Operands are non-literal so nothing is
// constant-folded by solc.
contract AdditionBasic {
    function addU256(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    function addU8(uint8 a, uint8 b) public pure returns (uint8) {
        return a + b;
    }

    function addI256(int256 a, int256 b) public pure returns (int256) {
        return a + b;
    }
}