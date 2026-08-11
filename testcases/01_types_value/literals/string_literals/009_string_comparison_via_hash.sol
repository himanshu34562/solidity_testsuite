// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: strings have NO built-in == operator in Solidity (unlike
// bytesN/bool/address) -- the common workaround is comparing keccak256
// hashes of their bytes representation. Tests the converter correctly
// rejects direct string == string (see sibling _expected_fail file)
// and that this hash-based pattern compiles correctly.
contract StringComparisonViaHash {
    function isEqual(string memory a, string memory b) public pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
}