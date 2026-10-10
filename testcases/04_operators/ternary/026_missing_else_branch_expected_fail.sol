// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- both branches are mandatory. There is
// no one-armed conditional expression.
// EXPECTED: compile error (parse error), expected ":" after the true
// expression.
contract MissingElseBranchExpectedFail {
    function f(bool c) public pure returns (uint256) {
        uint256 x = c ? 1;   // should fail to compile
        return x;
    }
}
