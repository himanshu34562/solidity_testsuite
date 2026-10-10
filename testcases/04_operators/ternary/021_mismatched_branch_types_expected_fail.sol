// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- the two branches need a common type.
// uint256 and int256 convert to neither each other, so no result type
// exists. (Fix: cast one branch, see 017.)
// EXPECTED: compile error, true expression's type uint256 does not match
// false expression's type int256.
contract MismatchedBranchTypesExpectedFail {
    function f(bool c, uint256 a, int256 b) public pure returns (int256) {
        return c ? a : b;   // should fail to compile
    }
}
