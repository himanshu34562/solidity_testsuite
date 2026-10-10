// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a SIGNED shift amount is rejected even
// when the left operand is unsigned. An explicit cast to an unsigned
// type is required.
// EXPECTED: compile error, operator << not compatible with types
// uint256 and int256.
contract ShiftWithSignedAmountExpectedFail {
    function f(uint256 a, int256 n) public pure returns (uint256) {
        return a << n;   // should fail to compile
    }
}