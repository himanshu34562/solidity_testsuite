// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: omitting the end index (arr[start:]) defaults to arr.length
// -- slices from start through the end of the array.
contract CalldataArraySliceOpenEndedEnd {
    function sliceToEnd(uint256[] calldata arr, uint256 start) external pure returns (uint256) {
        uint256[] calldata sliced = arr[start:];
        return sliced.length; // should equal arr.length - start
    }
}