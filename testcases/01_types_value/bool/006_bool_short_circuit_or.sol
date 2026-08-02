// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: || must short-circuit — if the left operand is true, the
// right operand (which reverts) must NOT be evaluated.
// EXPECTED: shortCircuitOr(true) returns true without reverting.
//           shortCircuitOr(false) reverts, since the right side always reverts.
contract BoolShortCircuitOr {
    function alwaysRevertsFalse() internal pure returns (bool) {
        revert("should not be called unless left side is false");
    }

    function shortCircuitOr(bool left) public pure returns (bool) {
        return left || alwaysRevertsFalse();
    }
}