// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- dividing a literal by a literal zero
// is rejected at COMPILE time, unlike the runtime Panic(0x12) for
// non-constant divisors (see 016).
// EXPECTED: compile error, division by zero.
contract LiteralDivisionByZeroExpectedFail {
    function f() public pure returns (uint256) {
        uint256 x = 1 / 0;   // should fail to compile
        return x;
    }
}