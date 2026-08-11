// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a calldata slice can itself be passed to another internal
// function expecting a calldata array parameter -- confirms slices
// aren't a dead-end value, they compose with the rest of the
// calldata-parameter-passing machinery.
contract CalldataArraySliceAsFurtherParameter {
    function sumInternal(uint256[] calldata arr) internal pure returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < arr.length; i++) {
            total += arr[i];
        }
        return total;
    }

    function sliceAndSum(uint256[] calldata arr, uint256 start, uint256 end) external pure returns (uint256) {
        return sumInternal(arr[start:end]);
    }
}