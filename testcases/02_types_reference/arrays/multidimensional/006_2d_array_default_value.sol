// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm 2D array default-value zero-initialization applies
// recursively -- every element of every inner array defaults to zero,
// matching the same guarantee established for 1D arrays, just nested
// one level deeper.
contract TwoDArrayDefaultValue {
    uint256[2][2] public defaultGrid;

    function getDefault(uint256 row, uint256 col) public view returns (uint256) {
        return defaultGrid[row][col]; // should be 0
    }
}