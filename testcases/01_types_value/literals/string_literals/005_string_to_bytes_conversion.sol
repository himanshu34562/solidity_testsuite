// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: explicit conversion between string and bytes -- both are
// dynamically-sized types with essentially the same underlying memory
// layout (length-prefixed byte array), so this conversion should be
// a cheap reinterpretation, not a copy/re-encode.
contract StringToBytesConversion {
    function stringToBytes(string memory s) public pure returns (bytes memory) {
        return bytes(s);
    }

    function bytesToString(bytes memory b) public pure returns (string memory) {
        return string(b);
    }
}