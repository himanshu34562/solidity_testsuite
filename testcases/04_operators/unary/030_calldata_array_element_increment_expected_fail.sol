// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- calldata is read-only, so an element of
// a calldata array cannot be modified in place, by ++ or by assignment.
// EXPECTED: compile error, calldata element cannot be modified.
contract CalldataArrayElementIncrementExpectedFail {
    function f(uint256[] calldata c) external pure {
        c[0]++;   // should fail to compile
    }
}
