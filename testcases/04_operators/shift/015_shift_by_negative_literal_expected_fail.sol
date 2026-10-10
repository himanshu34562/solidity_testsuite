// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- the shift amount cannot be a negative
// literal; shift amounts must be unsigned.
// EXPECTED: compile error, operator << not compatible with types
// uint256 and int_const -1.
contract ShiftByNegativeLiteralExpectedFail {
    function f(uint256 a) public pure returns (uint256) {
        return a << -1;   // should fail to compile
    }
}