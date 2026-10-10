// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- unary minus does not apply to bool.
// EXPECTED: compile error, unary operator - cannot be applied to type
// bool.
contract UnaryMinusOnBoolExpectedFail {
    function f(bool b) public pure returns (bool) {
        return -b;   // should fail to compile
    }
}
