// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- the unary bitwise NOT (~) does not
// apply to bool; logical negation is `!`.
// EXPECTED: compile error, unary operator ~ cannot be applied to type
// bool.
contract BitwiseNotOnBoolExpectedFail {
    function f(bool a) public pure returns (bool) {
        return ~a;   // should fail to compile
    }
}