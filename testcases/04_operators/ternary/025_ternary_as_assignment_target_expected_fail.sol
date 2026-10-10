// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a conditional expression is a value,
// not a location, so it cannot be assigned to (unlike C++ or some other
// languages). Use if/else.
// EXPECTED: compile error, expression has to be an lvalue.
contract TernaryAsAssignmentTargetExpectedFail {
    function f(bool c, uint256 a, uint256 b) public pure returns (uint256) {
        (c ? a : b) = 5;   // should fail to compile
        return a;
    }
}
