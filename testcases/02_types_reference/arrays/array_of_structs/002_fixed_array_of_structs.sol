// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: fixed-size array of structs -- combines fixed_size/'s
// type-level-length rules with struct element layout, distinct from
// the dynamic-length case in file 001.
contract FixedArrayOfStructs {
    struct Point {
        int256 x;
        int256 y;
    }

    Point[3] public triangle;

    function setPoint(uint256 index, int256 x, int256 y) public {
        triangle[index] = Point({x: x, y: y});
    }

    function getPoint(uint256 index) public view returns (int256, int256) {
        return (triangle[index].x, triangle[index].y);
    }
}