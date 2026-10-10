// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unsigned modulo returns the remainder of integer division.
// EXPECTED: mod(7, 3) == 1, mod(6, 3) == 0, mod(2, 5) == 2.
contract ModuloUnsigned {
    function mod(uint256 a, uint256 b) public pure returns (uint256) {
        return a % b;
    }
}