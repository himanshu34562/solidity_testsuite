// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- delete needs something to reset: a
// variable, element or field. A computed value has no location.
// EXPECTED: compile error, expression has to be an lvalue.
contract DeleteNonLvalueExpectedFail {
    function f(uint256 a, uint256 b) public pure returns (uint256) {
        delete (a + b);   // should fail to compile
        return a;
    }
}
