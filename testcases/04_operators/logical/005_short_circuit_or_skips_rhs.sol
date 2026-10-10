// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: || short-circuits. When the left operand is true the right
// operand is NOT evaluated, so its side effects do not happen.
// EXPECTED: orOp(true) leaves calls unchanged; orOp(false) increments
// calls by 1.
contract ShortCircuitOrSkipsRhs {
    uint256 public calls;

    function touch() internal returns (bool) {
        calls += 1;
        return false;
    }

    function orOp(bool a) public returns (bool) {
        return a || touch();
    }
}
