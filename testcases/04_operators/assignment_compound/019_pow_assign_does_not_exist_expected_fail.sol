// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- Solidity has no **= operator. The
// compound set is +=, -=, *=, /=, %=, &=, |=, ^=, <<=, >>=; exponent
// assignment must be written a = a ** b.
// EXPECTED: compile error (parse error) at the **= token.
contract PowAssignDoesNotExistExpectedFail {
    function f(uint256 a, uint256 b) public pure returns (uint256) {
        a **= b;   // should fail to compile
        return a;
    }
}