// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- CONTRAST with 002. Named-field
// construction requires ALL fields to be present; you cannot supply
// only a subset even with named fields.
// EXPECTED: compile error, wrong number of fields / missing field "y".
contract StructFieldReorderingExpectedFail {
    struct Point {
        uint256 x;
        uint256 y;
    }

    function makeIncompletePoint() public pure returns (uint256) {
        Point memory p = Point({x: 10}); // should fail: missing required field y
        return p.x;
    }
}