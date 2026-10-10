// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- bool has no compound assignment
// operators, because the bitwise operators don't apply to bool.
// EXPECTED: compile error, operator &= not compatible with types bool
// and bool.
contract CompoundAssignOnBoolExpectedFail {
    function f(bool a, bool b) public pure returns (bool) {
        a &= b;   // should fail to compile
        return a;
    }
}