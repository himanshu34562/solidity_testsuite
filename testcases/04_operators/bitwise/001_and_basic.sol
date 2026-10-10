// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline bitwise AND on unsigned integers of different
// widths. Operands are non-literal so nothing is constant-folded.
// EXPECTED: andU256(0xF0, 0x3C) == 0x30.
contract AndBasic {
    function andU256(uint256 a, uint256 b) public pure returns (uint256) {
        return a & b;
    }

    function andU8(uint8 a, uint8 b) public pure returns (uint8) {
        return a & b;
    }
}