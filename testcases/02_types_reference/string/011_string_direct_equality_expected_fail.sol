// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- no == operator for string memory/string memory.
// EXPECTED: compile error, operator == not compatible with types
// "string memory" and "string memory".
contract StringDirectEqualityExpectedFail {
    function isEqual(string memory a, string memory b) public pure returns (bool) {
        return a == b; // should fail
    }
}