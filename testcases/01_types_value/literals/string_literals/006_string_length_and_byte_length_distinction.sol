// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: string does NOT have a .length member directly in Solidity
// (unlike bytes) -- you must convert to bytes first to get length.
// This tests that the converter correctly rejects direct .length on
// string (see sibling _expected_fail file) and supports it via the
// bytes() conversion route instead.
contract StringLengthAndByteLengthDistinction {
    function getByteLength(string memory s) public pure returns (uint256) {
        return bytes(s).length; // correct way to get string byte length
    }
}