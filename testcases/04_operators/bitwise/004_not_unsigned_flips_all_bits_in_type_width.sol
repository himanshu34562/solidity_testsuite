// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: bitwise NOT on an unsigned integer flips every bit WITHIN
// THE TYPE'S WIDTH. For uint8 only the low 8 bits are flipped and the
// result stays within 0..255; for uint256 all 256 bits flip. A
// converter must truncate/mask the result to the type width.
// EXPECTED: notU8(0) == 255, notU8(255) == 0, notU8(0x0F) == 0xF0,
// notU256(0) == type(uint256).max.
contract NotUnsignedFlipsAllBitsInTypeWidth {
    function notU8(uint8 a) public pure returns (uint8) {
        return ~a;
    }

    function notU256(uint256 a) public pure returns (uint256) {
        return ~a;
    }
}