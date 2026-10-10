// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- unary minus exists only for signed
// integers. Applying it to an unsigned value is rejected (it silently
// wrapped before 0.8.0).
// EXPECTED: compile error, unary operator - cannot be applied to type
// uint256.
contract UnaryMinusOnUnsignedExpectedFail {
    function f(uint256 a) public pure returns (uint256) {
        return -a;   // should fail to compile
    }
}
