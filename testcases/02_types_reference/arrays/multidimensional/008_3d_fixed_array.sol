// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: three levels of nesting -- confirms the declaration-order
// rule and recursive indexing generalize beyond just 2D, and that
// there's no arbitrary depth limit in the converter's array-type
// representation.
contract ThreeDFixedArray {
    uint256[2][2][2] public cube;

    function setAt(uint256 x, uint256 y, uint256 z, uint256 value) public {
        cube[x][y][z] = value;
    }

    function getAt(uint256 x, uint256 y, uint256 z) public view returns (uint256) {
        return cube[x][y][z];
    }
}