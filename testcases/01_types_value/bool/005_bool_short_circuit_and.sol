// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: && must short-circuit — if the left operand is false, the
// right operand (which reverts) must NOT be evaluated. This tests that
// the converter emits a branch, not an eager/unconditional evaluation
// of both sides (which would be a correctness bug, not just a style choice).
// EXPECTED: shortCircuitAnd(false) returns false without reverting.
//           shortCircuitAnd(true) reverts, since the right side always reverts.
contract BoolShortCircuitAnd {
    function alwaysRevertsTrue() internal pure returns (bool) {
        revert("should not be called unless left side is true");
    }

    function shortCircuitAnd(bool left) public pure returns (bool) {
        return left && alwaysRevertsTrue();
    }
}