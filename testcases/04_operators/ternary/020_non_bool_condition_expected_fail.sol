// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- the condition must be bool; integers
// have no truthiness. Write x != 0 explicitly.
// EXPECTED: compile error, uint256 is not implicitly convertible to bool.
contract NonBoolConditionExpectedFail {
    function f(uint256 x) public pure returns (uint256) {
        return x ? 1 : 2;   // should fail to compile
    }
}
