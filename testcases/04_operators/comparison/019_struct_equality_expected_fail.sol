// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- structs cannot be compared with ==;
// fields must be compared one by one.
// EXPECTED: compile error, operator == not compatible with types
// struct Point memory and struct Point memory.
contract StructEqualityExpectedFail {
    struct Point {
        uint256 x;
        uint256 y;
    }

    function f(Point memory a, Point memory b) public pure returns (bool) {
        return a == b;   // should fail to compile
    }
}
