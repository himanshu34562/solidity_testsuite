// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- unary plus does not exist in Solidity
// (it was removed in 0.5.0). Only unary minus is available.
// EXPECTED: compile error, use of unary + is disallowed.
contract UnaryPlusExpectedFail {
    function f(int256 a) public pure returns (int256) {
        return +a;   // should fail to compile
    }
}
