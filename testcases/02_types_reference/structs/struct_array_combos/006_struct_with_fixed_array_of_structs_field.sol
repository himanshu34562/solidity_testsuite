// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a struct field that is itself a FIXED-size array of ANOTHER
// struct type -- three concepts composed together (outer struct,
// fixed-size array, inner struct), all within one field.
contract StructWithFixedArrayOfStructsField {
    struct Point {
        uint256 x;
        uint256 y;
    }

    struct Path {
        Point[2] endpoints; // fixed array of exactly 2 Points
    }

    Path private path;

    function setPath(uint256 x1, uint256 y1, uint256 x2, uint256 y2) public {
        path.endpoints[0] = Point({x: x1, y: y1});
        path.endpoints[1] = Point({x: x2, y: y2});
    }

    function getEndpoint(uint256 index) public view returns (uint256, uint256) {
        Point storage p = path.endpoints[index];
        return (p.x, p.y);
    }
}