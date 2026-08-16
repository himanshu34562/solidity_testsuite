// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MemoryLocalVariableBasic {
    struct Point {
        uint256 x;
        uint256 y;
    }

    function makePoint(uint256 x, uint256 y) public pure returns (uint256, uint256) {
        Point memory p = Point({x: x, y: y});
        return (p.x, p.y);
    }
}