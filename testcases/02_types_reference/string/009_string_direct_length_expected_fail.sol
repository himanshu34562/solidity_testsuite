// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- string has no .length member directly.
// EXPECTED: compile error, "Member \"length\" not found or not visible
// after argument-dependent lookup in string memory" (or similar).
contract StringDirectLengthExpectedFail {
    function length(string memory s) public pure returns (uint256) {
        return s.length; // should fail
    }
}