// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a fixed-size 2D array. NOTE the declaration order: uint256[3][2]
// means "an array of 2 elements, each of which is an array of 3
// uint256s" -- i.e. dimensions are declared OUTERMOST-LAST, opposite
// to how you might expect from languages like C (where int[2][3] reads
// left-to-right as outer-then-inner in declaration but Solidity's
// semantics specifically read right-to-left for array-of-array nesting).
contract TwoDFixedArrayBasic {
    uint256[3][2] public grid; // 2 rows, 3 columns each

    function setAt(uint256 row, uint256 col, uint256 value) public {
        grid[row][col] = value;
    }

    function getAt(uint256 row, uint256 col) public view returns (uint256) {
        return grid[row][col];
    }
}