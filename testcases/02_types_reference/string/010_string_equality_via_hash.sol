// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: strings have no built-in == operator -- keccak256 hash
// comparison is the standard workaround. See sibling _expected_fail
// file for the direct-comparison negative case.
contract StringEqualityViaHash {
    function isEqual(string memory a, string memory b) public pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
}