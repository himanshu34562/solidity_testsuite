// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the bitwise compound operators &=, |= and ^= on unsigned
// integers.
// EXPECTED: andAssign(0xF0, 0x3C) == 0x30, orAssign(0xF0, 0x0F) == 0xFF,
// xorAssign(0xF0, 0xFF) == 0x0F.
contract BitwiseCompoundAssign {
    function andAssign(uint256 a, uint256 b) public pure returns (uint256) {
        a &= b;
        return a;
    }

    function orAssign(uint256 a, uint256 b) public pure returns (uint256) {
        a |= b;
        return a;
    }

    function xorAssign(uint256 a, uint256 b) public pure returns (uint256) {
        a ^= b;
        return a;
    }
}