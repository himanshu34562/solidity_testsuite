// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- slicing syntax is calldata-only.
// Attempting arr[start:end] on a memory array should fail to compile,
// mirroring bytes_dynamic/013's finding for the bytes type specifically,
// now confirmed for typed arrays too.
// EXPECTED: compile error, slicing not supported for memory-located types.
contract MemoryArraySliceExpectedFail {
    function slice(uint256[] memory arr, uint256 start, uint256 end) public pure returns (uint256[] memory) {
        return arr[start:end]; // should fail: memory doesn't support slicing
    }
}