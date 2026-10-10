// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline left shift on unsigned integers of different
// widths. The result type is the type of the LEFT operand.
// EXPECTED: shlU256(1, 4) == 16, shlU8(1, 3) == 8.
contract ShlBasic {
    function shlU256(uint256 a, uint256 n) public pure returns (uint256) {
        return a << n;
    }

    function shlU8(uint8 a, uint256 n) public pure returns (uint8) {
        return a << n;
    }
}