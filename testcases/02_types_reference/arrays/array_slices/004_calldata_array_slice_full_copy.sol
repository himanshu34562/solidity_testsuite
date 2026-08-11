// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: arr[:] with both bounds omitted -- a slice covering the
// entire array, functionally a full-array view (still zero-copy,
// still calldata, still just a pointer+length pair into the original
// calldata region).
contract CalldataArraySliceFullCopy {
    function fullSlice(uint256[] calldata arr) external pure returns (uint256) {
        uint256[] calldata sliced = arr[:];
        return sliced.length; // should equal arr.length exactly
    }
}