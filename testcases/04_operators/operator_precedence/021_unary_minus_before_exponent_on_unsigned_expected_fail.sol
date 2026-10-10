// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- because unary minus binds tighter than
// **, -a ** b applies the minus to a first. For an unsigned a that is
// invalid (unary minus only exists for signed integers), so the whole
// expression is rejected even though -(a ** b) would be equally invalid.
// EXPECTED: compile error, unary operator - cannot be applied to type
// uint256.
contract UnaryMinusBeforeExponentOnUnsignedExpectedFail {
    function f(uint256 a, uint256 b) public pure returns (uint256) {
        return -a ** b;   // should fail to compile
    }
}
