// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- string memory/string memory has no
// built-in == operator.
// EXPECTED: compile error, operator == not compatible with types
// "string memory" and "string memory".
contract StringDirectEqualityExpectedFail {
    function isEqual(string memory a, string memory b) public pure returns (bool) {
        return a == b; // should fail: no == operator for string
    }
}