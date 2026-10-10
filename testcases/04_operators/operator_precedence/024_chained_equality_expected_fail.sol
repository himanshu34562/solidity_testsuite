// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- equality groups left to right, so
// a == b == c means (a == b) == c, comparing a bool with an integer. It
// is not an "all three equal" check; write a == b && b == c.
// EXPECTED: compile error, operator == not compatible with types bool
// and uint256.
contract ChainedEqualityExpectedFail {
    function f(uint256 a, uint256 b, uint256 c) public pure returns (bool) {
        return a == b == c;   // should fail to compile
    }
}
