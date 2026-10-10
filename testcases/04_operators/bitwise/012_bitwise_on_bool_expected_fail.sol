// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- bool is not an integer type, so the
// bitwise operators &, | and ^ do not apply to it. Booleans use the
// logical operators &&, || and !.
// EXPECTED: compile error, operator & not compatible with types bool
// and bool.
contract BitwiseOnBoolExpectedFail {
    function f(bool a, bool b) public pure returns (bool) {
        return a & b;   // should fail to compile
    }
}