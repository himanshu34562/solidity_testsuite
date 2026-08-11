// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: array literal where each element is itself a struct
// constructor call -- combines array-literal type inference with
// struct literal construction, distinct codegen path from a literal
// of plain scalar values.
contract ArrayLiteralOfStructs {
    struct Point {
        uint256 x;
        uint256 y;
    }

    function getPoints() public pure returns (Point[2] memory) {
        return [Point({x: 1, y: 2}), Point({x: 3, y: 4})];
    }
}