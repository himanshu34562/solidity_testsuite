// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract HexStringLiteralExactWidthBytesN {
    bytes4 public value = hex"AABBCCDD"; // exact 4-byte match, no padding needed
}