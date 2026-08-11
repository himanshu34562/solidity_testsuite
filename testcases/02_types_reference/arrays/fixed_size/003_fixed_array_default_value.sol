// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm every element of an uninitialized fixed array
// defaults to the zero value of its element type -- same
// zero-initialization guarantee as scalar types, applied element-wise.
contract FixedArrayDefaultValue {
    uint256[3] public defaultNumbers;

    function getDefault(uint256 index) public view returns (uint256) {
        return defaultNumbers[index];
    }
}