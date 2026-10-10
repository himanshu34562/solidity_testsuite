// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- the right-hand side of a compound
// assignment cannot be WIDER than the target, because the operation
// would be computed in the wider type and then need an implicit
// narrowing conversion back. (The narrower-RHS direction is fine -- see
// 011.)
// EXPECTED: compile error, operator += not compatible with types uint8
// and uint16.
contract CompoundAssignRhsWiderExpectedFail {
    function f(uint8 a, uint16 b) public pure returns (uint8) {
        a += b;   // should fail to compile
        return a;
    }
}