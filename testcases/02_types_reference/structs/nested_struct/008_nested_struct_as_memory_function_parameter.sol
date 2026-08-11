// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract NestedStructAsMemoryFunctionParameter {
    struct Point {
        uint256 x;
        uint256 y;
    }

    struct Line {
        Point start;
        Point end;
    }

    function lengthSquared(Line memory line) public pure returns (uint256) {
        uint256 dx = line.end.x > line.start.x ? line.end.x - line.start.x : line.start.x - line.end.x;
        uint256 dy = line.end.y > line.start.y ? line.end.y - line.start.y : line.start.y - line.end.y;
        return dx * dx + dy * dy;
    }
}