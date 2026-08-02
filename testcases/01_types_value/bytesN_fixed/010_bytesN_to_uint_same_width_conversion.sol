// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: explicit conversion between bytesN and uintN of the SAME
// byte-width is allowed and reinterprets the bits directly (no value
// translation, just a type-level reinterpretation -- right-padded bytes
// become the corresponding integer bit pattern as-is).
contract BytesNToUintSameWidthConversion {
    function bytesToUint(bytes4 b) public pure returns (uint32) {
        return uint32(b);
    }

    function uintToBytes(uint32 u) public pure returns (bytes4) {
        return bytes4(u);
    }
}