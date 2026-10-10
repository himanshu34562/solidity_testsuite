// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- the integer literal 1 is not the bool
// true; it is not accepted as an operand of &&.
// EXPECTED: compile error, operator && not compatible with types bool
// and int_const 1.
contract LogicalAndWithIntegerLiteralExpectedFail {
    function f(bool a) public pure returns (bool) {
        return a && 1;   // should fail to compile
    }
}
