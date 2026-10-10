// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- ! requires a bool operand. To test an
// integer for zero write x == 0.
// EXPECTED: compile error, unary operator ! cannot be applied to type
// uint256.
contract LogicalNotOnIntegerExpectedFail {
    function f(uint256 a) public pure returns (bool) {
        return !a;   // should fail to compile
    }
}
