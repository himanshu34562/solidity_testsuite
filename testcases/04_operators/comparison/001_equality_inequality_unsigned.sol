// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline == and != on unsigned integers of different widths.
// Both return bool.
// EXPECTED: eq(5, 5) == true, ne(5, 5) == false, ne(5, 6) == true.
contract EqualityInequalityUnsigned {
    function eq(uint256 a, uint256 b) public pure returns (bool) {
        return a == b;
    }

    function ne(uint256 a, uint256 b) public pure returns (bool) {
        return a != b;
    }

    function eqU8(uint8 a, uint8 b) public pure returns (bool) {
        return a == b;
    }
}
