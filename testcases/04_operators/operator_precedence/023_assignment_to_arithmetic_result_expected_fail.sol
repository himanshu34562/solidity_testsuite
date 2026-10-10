// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- assignment has the lowest precedence,
// so a + b = c groups as (a + b) = c, assigning to the temporary result
// of the addition. It does not mean a + (b = c).
// EXPECTED: compile error, expression has to be an lvalue.
contract AssignmentToArithmeticResultExpectedFail {
    function f(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        a + b = c;   // should fail to compile
        return a;
    }
}
