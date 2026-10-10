// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the classic guard idiom. The right operand would revert with
// Panic(0x12) on a zero divisor, but short-circuiting means it is never
// evaluated when the guard on the left fails.
// EXPECTED: safeDivides(10, 0) == false with no revert,
// safeDivides(10, 2) == true, safeModulo(10, 0) == false with no revert.
contract ShortCircuitGuardsDivisionByZero {
    function safeDivides(uint256 a, uint256 b) public pure returns (bool) {
        return b != 0 && a / b > 1;
    }

    function safeModulo(uint256 a, uint256 b) public pure returns (bool) {
        return b != 0 && a % b == 0;
    }
}
