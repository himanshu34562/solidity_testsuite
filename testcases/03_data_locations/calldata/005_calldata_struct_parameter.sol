// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: calldata struct parameter -- confirms structs (not just
// arrays/bytes/string) can be calldata-located, read-only, zero-copy
// referenced directly from the raw call input.
contract CalldataStructParameter {
    struct Point {
        uint256 x;
        uint256 y;
    }

    function sumCoordinates(Point calldata p) external pure returns (uint256) {
        return p.x + p.y;
    }
}