// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- same as fixed arrays, dynamic arrays
// have no built-in == operator either.
// EXPECTED: compile error, operator == not compatible with array types.
contract DynamicArrayComparisonExpectedFail {
    function isEqual(uint256[] memory a, uint256[] memory b) public pure returns (bool) {
        return a == b; // should fail
    }
}