// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- extends 002's read-only restriction
// to struct FIELD mutation specifically, not just array element
// mutation. The read-only restriction applies uniformly across every
// calldata-located type.
// EXPECTED: compile error, calldata read-only restriction.
contract CalldataStructFieldMutationExpectedFail {
    struct Point {
        uint256 x;
        uint256 y;
    }

    function tryToMutateField(Point calldata p) external pure returns (uint256) {
        p.x = 999; // should fail: calldata struct fields are read-only
        return p.x;
    }
}