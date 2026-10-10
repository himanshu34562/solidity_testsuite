// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- bitwise operators between an integer
// and a fixed-size byte array are rejected. Both are bitwise-capable
// types but neither converts implicitly to the other, so there is no
// common type.
// EXPECTED: compile error, operator & not compatible with types
// uint256 and bytes32.
contract IntegerAndBytesNExpectedFail {
    function f(uint256 a, bytes32 b) public pure returns (uint256) {
        return a & b;   // should fail to compile
    }
}