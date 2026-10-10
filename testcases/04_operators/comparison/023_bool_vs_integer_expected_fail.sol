// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- bool and integers do not convert
// implicitly, so a bool cannot be compared with 0 or 1.
// EXPECTED: compile error, operator == not compatible with types bool
// and int_const 1.
contract BoolVsIntegerExpectedFail {
    function f(bool a) public pure returns (bool) {
        return a == 1;   // should fail to compile
    }
}
