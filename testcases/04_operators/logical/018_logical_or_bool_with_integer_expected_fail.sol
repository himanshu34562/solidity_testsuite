// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- mixing a bool with an integer variable
// in || is rejected; the integer is not converted to bool.
// EXPECTED: compile error, operator || not compatible with types bool
// and uint256.
contract LogicalOrBoolWithIntegerExpectedFail {
    function f(bool a, uint256 b) public pure returns (bool) {
        return a || b;   // should fail to compile
    }
}
