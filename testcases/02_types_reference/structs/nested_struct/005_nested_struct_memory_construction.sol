// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract NestedStructMemoryConstruction {
    struct Point {
        uint256 x;
        uint256 y;
    }

    struct Rectangle {
        Point topLeft;
        Point bottomRight;
    }

    function makeRectangle(uint256 x1, uint256 y1, uint256 x2, uint256 y2)
        public
        pure
        returns (Rectangle memory)
    {
        return Rectangle({
            topLeft: Point({x: x1, y: y1}),
            bottomRight: Point({x: x2, y: y2})
        });
    }
}