// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a constant state variable cannot be
// the target of a compound assignment (or any assignment).
// EXPECTED: compile error, cannot assign to a constant variable.
contract CompoundAssignOnConstantExpectedFail {
    uint256 constant LIMIT = 10;

    function f() public pure returns (uint256) {
        LIMIT += 1;   // should fail to compile
        return LIMIT;
    }
}