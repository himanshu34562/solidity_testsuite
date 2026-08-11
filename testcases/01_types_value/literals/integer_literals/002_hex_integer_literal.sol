// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: hex integer literals (0x prefix) used in a plain integer
// context (not bytesN) -- should be treated as a normal integer value,
// width-inferred like any other int_const literal.
contract HexIntegerLiteral {
    uint256 public value = 0xFF; // 255 in decimal

    function getHexConstant() public pure returns (uint256) {
        return 0x1000; // 4096 in decimal
    }
}