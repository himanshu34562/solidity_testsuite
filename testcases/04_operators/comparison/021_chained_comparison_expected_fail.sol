// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- comparison chaining like a < b < c is
// not a range check in Solidity. It parses as (a < b) < c, comparing a
// bool with an integer, which is rejected. Write a < b && b < c.
// EXPECTED: compile error, operator < not compatible with types bool
// and uint256.
contract ChainedComparisonExpectedFail {
    function f(uint256 a, uint256 b, uint256 c) public pure returns (bool) {
        return a < b < c;   // should fail to compile
    }
}
