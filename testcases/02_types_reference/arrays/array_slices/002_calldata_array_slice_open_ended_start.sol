// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: omitting the start index (arr[:end]) defaults to 0 --
// slices from the beginning of the array up to (not including) end.
contract CalldataArraySliceOpenEndedStart {
    function sliceFromStart(uint256[] calldata arr, uint256 end) external pure returns (uint256) {
        uint256[] calldata sliced = arr[:end];
        return sliced.length; // should equal end (assuming end <= arr.length)
    }
}