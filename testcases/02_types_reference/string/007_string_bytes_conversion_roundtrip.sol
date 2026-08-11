// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: string <-> bytes conversion round-trips exactly, since both
// share the same underlying length-prefixed byte-array memory layout.
// This should be a cheap reinterpretation, not a re-encode, at the IR level.
contract StringBytesConversionRoundtrip {
    function roundtrip(string memory s) public pure returns (string memory) {
        bytes memory b = bytes(s);
        return string(b);
    }
}