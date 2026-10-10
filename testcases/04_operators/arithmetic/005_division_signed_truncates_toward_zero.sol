// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: signed integer division truncates TOWARD ZERO, not toward
// negative infinity. This differs from floor division in some other
// languages and matters for a converter's signed-division lowering.
// EXPECTED: divide(-7, 2) == -3 (not -4), divide(7, -2) == -3.
contract DivisionSignedTruncatesTowardZero {
    function divide(int256 a, int256 b) public pure returns (int256) {
        return a / b;
    }
}