// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a famous quirk. The literal -1 has a
// signed type (int8) and the literal 1 an unsigned one (uint8); neither
// converts to the other, so the branches have no common type even
// though the target is int256. Fix: cast a branch (see 017).
// EXPECTED: compile error, true expression's type int8 does not match
// false expression's type uint8.
contract NegativeAndPositiveLiteralBranchesExpectedFail {
    function f(bool c) public pure returns (int256) {
        int256 x = c ? -1 : 1;   // should fail to compile
        return x;
    }
}
