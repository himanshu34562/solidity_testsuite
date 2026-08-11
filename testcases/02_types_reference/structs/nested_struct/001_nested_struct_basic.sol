// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a struct containing another struct as a field -- the
// simplest possible nesting case, establishing that struct-in-struct
// composition works before layering on more complexity.
contract NestedStructBasic {
    struct Point {
        uint256 x;
        uint256 y;
    }

    struct Line {
        Point start;
        Point end;
    }

    Line public segment;

    function setSegment(uint256 x1, uint256 y1, uint256 x2, uint256 y2) public {
        segment = Line({start: Point({x: x1, y: y1}), end: Point({x: x2, y: y2})});
    }

    function getStart() public view returns (uint256, uint256) {
        return (segment.start.x, segment.start.y);
    }
}