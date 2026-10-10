// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- the exponent of ** must be an
// unsigned type. A signed exponent is rejected even when the base is
// unsigned. (A signed BASE with an unsigned exponent is fine -- see
// 008.)
// EXPECTED: compile error, the exponent type must be unsigned.
contract SignedExponentExpectedFail {
    function f(uint256 a, int256 b) public pure returns (uint256) {
        return a ** b;   // should fail to compile
    }
}