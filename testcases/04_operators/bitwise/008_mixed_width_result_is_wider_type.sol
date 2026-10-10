// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: for bitwise operators on integers of different widths (same
// signedness), the narrower operand is widened and the result has the
// WIDER type, same rule as arithmetic.
// EXPECTED: andMixed(0xFF, 0x1234) == 0x34, orMixed(0xFF, 0x1200) == 0x12FF.
contract MixedWidthResultIsWiderType {
    function andMixed(uint8 a, uint16 b) public pure returns (uint16) {
        return a & b;
    }

    function orMixed(uint8 a, uint16 b) public pure returns (uint16) {
        return a | b;
    }
}