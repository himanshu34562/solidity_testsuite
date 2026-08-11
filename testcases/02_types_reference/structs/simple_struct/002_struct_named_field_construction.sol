// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: named-field struct construction (Point({x: 1, y: 2})) --
// fields can be specified in ANY order when named explicitly, unlike
// positional construction where order must match declaration order.
contract StructNamedFieldConstruction {
    struct Point {
        uint256 x;
        uint256 y;
    }

    function makePoint() public pure returns (uint256, uint256) {
        Point memory p = Point({y: 20, x: 10}); // order reversed from declaration, still valid
        return (p.x, p.y);
    }
}