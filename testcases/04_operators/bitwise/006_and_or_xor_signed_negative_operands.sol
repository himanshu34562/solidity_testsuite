// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: bitwise operators on signed integers act on the two's
// complement bit pattern, including the sign bit. Negative operands
// therefore have all their high bits set.
// EXPECTED: andS(-2, 3) == 2, orS(-2, 1) == -1, xorS(-2, 1) == -1,
// andS(-1, x) == x for any x.
contract AndOrXorSignedNegativeOperands {
    function andS(int256 a, int256 b) public pure returns (int256) {
        return a & b;
    }

    function orS(int256 a, int256 b) public pure returns (int256) {
        return a | b;
    }

    function xorS(int256 a, int256 b) public pure returns (int256) {
        return a ^ b;
    }
}