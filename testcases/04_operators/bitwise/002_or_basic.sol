// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline bitwise OR on unsigned integers of different
// widths.
// EXPECTED: orU256(0xF0, 0x0F) == 0xFF.
contract OrBasic {
    function orU256(uint256 a, uint256 b) public pure returns (uint256) {
        return a | b;
    }

    function orU8(uint8 a, uint8 b) public pure returns (uint8) {
        return a | b;
    }
}