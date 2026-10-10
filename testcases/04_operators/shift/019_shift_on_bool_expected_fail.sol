// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- shift operators do not apply to bool.
// EXPECTED: compile error, operator << not compatible with types bool
// and uint256.
contract ShiftOnBoolExpectedFail {
    function f(bool a, uint256 n) public pure returns (bool) {
        return a << n;   // should fail to compile
    }
}