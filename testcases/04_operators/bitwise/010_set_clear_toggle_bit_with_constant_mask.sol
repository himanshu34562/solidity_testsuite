// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: set, clear and toggle a single bit using OR, AND-NOT and XOR
// with a constant mask (bit 3 == 0x08).
// EXPECTED: setBit3(0) == 8, clearBit3(0xFF) == 0xF7, toggleBit3(0) == 8,
// toggleBit3(8) == 0.
contract SetClearToggleBitWithConstantMask {
    function setBit3(uint256 x) public pure returns (uint256) {
        return x | 0x08;
    }

    function clearBit3(uint256 x) public pure returns (uint256) {
        return x & ~uint256(0x08);
    }

    function toggleBit3(uint256 x) public pure returns (uint256) {
        return x ^ 0x08;
    }
}