// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- structs, like arrays, have no
// built-in == operator. Field-by-field comparison must be written
// manually if needed.
// EXPECTED: compile error, operator == not compatible with struct types.
contract StructComparisonExpectedFail {
    struct Point {
        uint256 x;
        uint256 y;
    }

    function isEqual(Point memory a, Point memory b) public pure returns (bool) {
        return a == b; // should fail: no == for structs
    }
}