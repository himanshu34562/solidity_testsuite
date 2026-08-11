// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- slicing syntax b[start:end] is
// calldata-only. Attempting it on a memory bytes value should fail
// to compile.
// EXPECTED: compile error, slicing not supported for memory-located types.
contract BytesSliceMemoryExpectedFail {
    function slice(bytes memory b, uint256 start, uint256 end) public pure returns (bytes memory) {
        return b[start:end]; // should fail: memory doesn't support slicing
    }
}