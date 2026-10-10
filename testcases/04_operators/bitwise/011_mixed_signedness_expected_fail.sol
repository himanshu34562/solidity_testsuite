// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- bitwise operators between a signed and
// an unsigned integer are rejected; no implicit common type exists,
// even at the same width.
// EXPECTED: compile error, operator & not compatible with types uint8
// and int8.
contract BitwiseMixedSignednessExpectedFail {
    function f(uint8 a, int8 b) public pure returns (int256) {
        return a & b;   // should fail to compile
    }
}