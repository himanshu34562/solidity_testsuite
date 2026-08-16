// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a memory array of structs, where the structs contain only
// fixed-size (non-dynamic) fields -- confirms this produces a simple,
// uniformly-strided memory layout (each element the same fixed byte
// width), a simpler case than array_of_structs/004's dynamic-field
// version, worth having as its own baseline.
contract MemoryArrayOfFixedSizeStructs {
    struct Point {
        uint256 x;
        uint256 y;
    }

    function buildPoints(uint256 count) public pure returns (Point[] memory) {
        Point[] memory points = new Point[](count);
        for (uint256 i = 0; i < count; i++) {
            points[i] = Point({x: i, y: i * 2});
        }
        return points;
    }
}