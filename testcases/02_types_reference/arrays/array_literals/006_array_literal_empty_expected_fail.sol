// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- an empty array literal `[]` has no
// elements to infer a type from, and Solidity does not support empty
// array literals at all (unlike, say, an empty string literal, which
// is perfectly valid).
// EXPECTED: compile error, empty array literal not supported, or
// similar type-inference failure.
contract ArrayLiteralEmptyExpectedFail {
    function getEmptyArray() public pure returns (uint256[] memory) {
        return []; // should fail: cannot infer type/size from no elements
    }
}