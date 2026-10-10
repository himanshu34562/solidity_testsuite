// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- ++ and -- apply to integers only.
// EXPECTED: compile error, unary operator ++ cannot be applied to type
// bool.
contract IncrementOnBoolExpectedFail {
    function f(bool b) public pure returns (bool) {
        b++;   // should fail to compile
        return b;
    }
}
