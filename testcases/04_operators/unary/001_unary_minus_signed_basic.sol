// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline unary minus on signed integers of different widths.
// EXPECTED: neg(5) == -5, neg(-5) == 5, neg(0) == 0, negI8(100) == -100.
contract UnaryMinusSignedBasic {
    function neg(int256 a) public pure returns (int256) {
        return -a;
    }

    function negI8(int8 a) public pure returns (int8) {
        return -a;
    }
}
