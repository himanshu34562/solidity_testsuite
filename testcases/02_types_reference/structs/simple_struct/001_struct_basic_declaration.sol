// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StructBasicDeclaration {
    struct Point {
        uint256 x;
        uint256 y;
    }

    Point public origin;

    function setOrigin(uint256 x, uint256 y) public {
        origin = Point({x: x, y: y});
    }

    function getOrigin() public view returns (uint256, uint256) {
        return (origin.x, origin.y);
    }
}