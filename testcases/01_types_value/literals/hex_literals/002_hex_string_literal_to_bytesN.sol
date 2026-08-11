// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: hex"..." literal assigned to a fixed bytesN type -- like
// string literals (see bytesN_fixed/007), this should support
// right-padding when the literal is SHORTER than the target width,
// unlike numeric 0x... literals which require an exact-width match
// (confirmed earlier in bytesN_fixed/007's testing).
contract HexStringLiteralToBytesN {
    bytes4 public value = hex"01"; // right-padded to 0x01000000

    function getValue() public view returns (bytes4) {
        return value;
    }
}