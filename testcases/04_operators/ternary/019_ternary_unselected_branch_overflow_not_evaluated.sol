// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: checked-arithmetic overflow in the UNSELECTED branch never
// triggers, because that branch is not evaluated.
// EXPECTED: f(true, 255, 1) == 255 with no revert, f(false, 255, 1)
// reverts with Panic(0x11).
contract TernaryUnselectedBranchOverflowNotEvaluated {
    function f(bool c, uint8 a, uint8 b) public pure returns (uint8) {
        return c ? a : a + b;
    }
}
