// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a negative literal cannot be compared
// with an unsigned integer, because no common type holds both. A
// literal that is merely too LARGE for the variable is fine (see 022);
// the sign mismatch is what makes this fail.
// EXPECTED: compile error, operator == not compatible with types uint8
// and int_const -1.
contract NegativeLiteralVsUnsignedExpectedFail {
    function f(uint8 x) public pure returns (bool) {
        return x == -1;   // should fail to compile
    }
}
