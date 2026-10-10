// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: comparing integers of different widths (same signedness)
// widens the narrower operand to the wider type first, then compares.
// EXPECTED: eq(255, 255) == true, lt(1, 256) == true,
// ltSigned(-1, 5) == true.
contract MixedWidthSameSignedness {
    function eq(uint8 a, uint16 b) public pure returns (bool) {
        return a == b;
    }

    function lt(uint8 a, uint16 b) public pure returns (bool) {
        return a < b;
    }

    function ltSigned(int8 a, int16 b) public pure returns (bool) {
        return a < b;
    }
}
