// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- calldata is fundamentally read-only.
// Attempting to write through a calldata reference (even a single
// element) must fail to compile, unlike memory (always mutable) or
// storage (mutable via appropriate access).
// EXPECTED: compile error, "Calldata arrays are read-only" (or similar).
contract CalldataReadOnlyMutationExpectedFail {
    function tryToMutate(uint256[] calldata arr) external pure returns (uint256[] memory) {
        arr[0] = 999; // should fail: calldata is read-only
        return arr;
    }
}