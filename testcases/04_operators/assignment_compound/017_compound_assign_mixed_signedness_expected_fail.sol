// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- compound assignment between a signed
// and an unsigned integer is rejected, since there is no common type.
// EXPECTED: compile error, operator += not compatible with types uint256
// and int256.
contract CompoundAssignMixedSignednessExpectedFail {
    function f(uint256 a, int256 b) public pure returns (uint256) {
        a += b;   // should fail to compile
        return a;
    }
}