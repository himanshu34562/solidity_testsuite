// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- string has no direct .length member.
// EXPECTED: compile error, "Member \"length\" not found or not visible
// after argument-dependent lookup in string memory" (or similar).
contract StringDirectLengthExpectedFail {
    function getDirectLength(string memory s) public pure returns (uint256) {
        return s.length; // should fail: string has no .length
    }
}