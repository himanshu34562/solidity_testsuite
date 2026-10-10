// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline == and != on signed integers, including negative
// values.
// EXPECTED: eq(-1, -1) == true, eq(-1, 1) == false, ne(-1, 1) == true.
contract EqualityInequalitySigned {
    function eq(int256 a, int256 b) public pure returns (bool) {
        return a == b;
    }

    function ne(int256 a, int256 b) public pure returns (bool) {
        return a != b;
    }

    function eqI8(int8 a, int8 b) public pure returns (bool) {
        return a == b;
    }
}
