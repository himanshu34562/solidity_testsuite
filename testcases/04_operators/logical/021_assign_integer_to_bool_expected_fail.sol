// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- an integer cannot be assigned to a
// bool variable, not even the literals 0 and 1.
// EXPECTED: compile error, int_const 1 is not implicitly convertible to
// bool.
contract AssignIntegerToBoolExpectedFail {
    function f() public pure returns (bool) {
        bool b = 1;   // should fail to compile
        return b;
    }
}
