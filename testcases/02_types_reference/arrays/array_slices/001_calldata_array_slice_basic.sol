// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: basic calldata array slicing -- arr[start:end] produces a
// calldata slice (a view into the original calldata, no copy) covering
// indices [start, end). Only legal on calldata-located arrays.
contract CalldataArraySliceBasic {
    function slice(uint256[] calldata arr, uint256 start, uint256 end) external pure returns (uint256[] memory) {
        uint256[] calldata sliced = arr[start:end];
        // convert to memory for the return value since calldata slices
        // can't be returned directly as calldata from an external call boundary
        uint256[] memory result = new uint256[](sliced.length);
        for (uint256 i = 0; i < sliced.length; i++) {
            result[i] = sliced[i];
        }
        return result;
    }
}