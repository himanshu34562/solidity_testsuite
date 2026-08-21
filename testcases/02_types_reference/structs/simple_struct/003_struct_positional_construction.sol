// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: positional struct construction (Point(1, 2)) -- CONTRAST
// with 002: arguments must match declaration order exactly here, no
// reordering allowed since there are no field names to disambiguate.
contract StructPositionalConstruction {
    struct Point {
        uint256 x;
        uint256 y;
    }

    function makePoint() public pure returns (uint256, uint256) {
        Point memory p = Point(10, 20); // positional: x=10, y=20, order-dependent
        return (p.x, p.y);
    }
}