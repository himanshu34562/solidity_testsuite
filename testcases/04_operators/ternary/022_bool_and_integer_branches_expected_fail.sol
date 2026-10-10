// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a bool branch and an integer branch
// have no common type.
// EXPECTED: compile error, true expression's type bool does not match
// false expression's type uint8.
contract BoolAndIntegerBranchesExpectedFail {
    function f(bool c) public pure returns (uint256) {
        return c ? true : 1;   // should fail to compile
    }
}
