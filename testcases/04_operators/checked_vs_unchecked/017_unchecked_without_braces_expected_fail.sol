// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- `unchecked` is only valid as a block
// statement. It cannot prefix a single statement or expression.
// EXPECTED: compile error (parse error), expected "{" after unchecked.
contract UncheckedWithoutBracesExpectedFail {
    function f(uint8 a, uint8 b) public pure returns (uint8) {
        uint8 x;
        unchecked x = a + b;   // should fail to compile
        return x;
    }
}
