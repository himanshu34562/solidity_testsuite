// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TwoDArrayAsMemoryParameter {
    function sumGrid(uint256[3][2] memory grid) public pure returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < 2; i++) {
            for (uint256 j = 0; j < 3; j++) {
                total += grid[i][j];
            }
        }
        return total;
    }
}