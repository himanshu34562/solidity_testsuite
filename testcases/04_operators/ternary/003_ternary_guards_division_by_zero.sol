// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the guard idiom. The division in the unselected branch would
// revert with Panic(0x12) for a zero divisor, but it is never evaluated
// when the condition selects the other branch.
// EXPECTED: safeDiv(10, 0) == 0 with no revert, safeDiv(10, 2) == 5,
// safeMod(10, 0) == 0 with no revert.
contract TernaryGuardsDivisionByZero {
    function safeDiv(uint256 a, uint256 b) public pure returns (uint256) {
        return b == 0 ? 0 : a / b;
    }

    function safeMod(uint256 a, uint256 b) public pure returns (uint256) {
        return b == 0 ? 0 : a % b;
    }
}
