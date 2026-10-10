// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- the result of uint8 + uint16 has type
// uint16 (see 011), so assigning it to a uint8 variable without an
// explicit cast is an implicit narrowing conversion and is rejected.
// EXPECTED: compile error, uint16 is not implicitly convertible to
// uint8.
contract NarrowingResultAssignmentExpectedFail {
    function f(uint8 a, uint16 b) public pure returns (uint8) {
        uint8 r = a + b;   // should fail to compile
        return r;
    }
}