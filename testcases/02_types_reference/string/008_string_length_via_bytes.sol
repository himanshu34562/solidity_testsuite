// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: string has no direct .length -- must convert to bytes first.
// This is the correct, idiomatic pattern (see sibling _expected_fail
// file for the direct-access negative case).
contract StringLengthViaBytes {
    function length(string memory s) public pure returns (uint256) {
        return bytes(s).length;
    }
}