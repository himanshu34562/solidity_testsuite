// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: && short-circuits. When the left operand is false the right
// operand is NOT evaluated, so its side effects do not happen. A
// converter that lowers && to a plain bitwise AND of both sides would
// get the side effect wrong.
// EXPECTED: andOp(false) leaves calls unchanged; andOp(true) increments
// calls by 1.
contract ShortCircuitAndSkipsRhs {
    uint256 public calls;

    function touch() internal returns (bool) {
        calls += 1;
        return true;
    }

    function andOp(bool a) public returns (bool) {
        return a && touch();
    }
}
