// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: on signed integers (two's complement), ~x == -x - 1.
// EXPECTED: not(0) == -1, not(5) == -6, not(-1) == 0.
contract NotSignedIsNegativeXMinusOne {
    function not(int256 a) public pure returns (int256) {
        return ~a;
    }

    function notI8(int8 a) public pure returns (int8) {
        return ~a;
    }
}