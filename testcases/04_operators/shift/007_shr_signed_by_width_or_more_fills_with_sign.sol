// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: arithmetic right shift of a SIGNED value by an amount >= its
// width fills with the sign bit: negative values become -1, non-negative
// values become 0.
// EXPECTED: shr(-1, 300) == -1, shr(5, 300) == 0, shrI8(-128, 100) == -1.
contract ShrSignedByWidthOrMoreFillsWithSign {
    function shr(int256 a, uint256 n) public pure returns (int256) {
        return a >> n;
    }

    function shrI8(int8 a, uint256 n) public pure returns (int8) {
        return a >> n;
    }
}