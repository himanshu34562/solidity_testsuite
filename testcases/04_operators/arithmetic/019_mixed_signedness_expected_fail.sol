// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- arithmetic between a signed and an
// unsigned integer is rejected; there is no implicit common type, even
// when both operands have the same width.
// EXPECTED: compile error, operator + not compatible with types uint8
// and int8.
contract MixedSignednessExpectedFail {
    function add(uint8 a, int8 b) public pure returns (int256) {
        return a + b;   // should fail to compile
    }
}