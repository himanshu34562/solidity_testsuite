// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a slice with start > end, or end > arr.length, reverts at
// RUNTIME -- same Panic-style bounds-checking philosophy as direct
// indexing, applied to slice bounds instead of a single index. Compiles
// successfully; the revert only happens if called with invalid bounds.
contract CalldataArraySliceOutOfBoundsExpectedFailAtRuntime {
    function slice(uint256[] calldata arr, uint256 start, uint256 end) external pure returns (uint256) {
        uint256[] calldata sliced = arr[start:end]; // reverts if start > end or end > arr.length
        return sliced.length;
    }
}