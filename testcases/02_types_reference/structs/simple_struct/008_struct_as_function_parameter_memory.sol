// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StructAsFunctionParameterMemory {
    struct Point {
        uint256 x;
        uint256 y;
    }

    function distanceSquared(Point memory a, Point memory b) public pure returns (uint256) {
        uint256 dx = a.x > b.x ? a.x - b.x : b.x - a.x;
        uint256 dy = a.y > b.y ? a.y - b.y : b.y - a.y;
        return dx * dx + dy * dy;
    }
}