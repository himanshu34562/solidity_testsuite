// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: integer variables can be compared against literals as long
// as the literal fits the variable's type; the literal takes on the
// variable's type. Covers decimal, hex, zero and negative literals.
// EXPECTED: isZero(0) == true, isNegative(-5) == true, inRange(15) == true.
contract IntegerVsLiteralComparison {
    function isZero(uint256 x) public pure returns (bool) {
        return x == 0;
    }

    function isPositive(int256 x) public pure returns (bool) {
        return x > 0;
    }

    function isNegative(int256 x) public pure returns (bool) {
        return x < 0;
    }

    function isMaxU8(uint8 x) public pure returns (bool) {
        return x == 255;
    }

    function isHexFF(uint256 x) public pure returns (bool) {
        return x == 0xFF;
    }

    function inRange(uint256 x) public pure returns (bool) {
        return x >= 10 && x <= 20;
    }
}
