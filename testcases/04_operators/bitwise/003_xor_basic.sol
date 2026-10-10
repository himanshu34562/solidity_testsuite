// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline bitwise XOR on unsigned integers of different
// widths.
// EXPECTED: xorU256(0xF0, 0xFF) == 0x0F.
contract XorBasic {
    function xorU256(uint256 a, uint256 b) public pure returns (uint256) {
        return a ^ b;
    }

    function xorU8(uint8 a, uint8 b) public pure returns (uint8) {
        return a ^ b;
    }
}