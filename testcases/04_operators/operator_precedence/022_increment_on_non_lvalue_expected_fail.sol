// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- ++ and -- need an lvalue (a variable,
// element or field). The parenthesized sum (a + b) is a temporary value,
// not a storage location.
// EXPECTED: compile error, expression has to be an lvalue.
contract IncrementOnNonLvalueExpectedFail {
    function f(uint256 a, uint256 b) public pure returns (uint256) {
        (a + b)++;   // should fail to compile
        return a;
    }
}
