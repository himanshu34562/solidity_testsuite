// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: multidimensional calldata array parameter -- confirms
// calldata's zero-copy referencing extends correctly to nested arrays,
// not just single-level ones.
contract CalldataNestedArrayParameter {
    function sumGrid(uint256[][] calldata grid) external pure returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < grid.length; i++) {
            for (uint256 j = 0; j < grid[i].length; j++) {
                total += grid[i][j];
            }
        }
        return total;
    }
}