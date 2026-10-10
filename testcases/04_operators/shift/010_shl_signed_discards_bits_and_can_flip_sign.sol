// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: << on a signed integer shifts the two's complement bit
// pattern, so bits can move into the sign position and flip the sign;
// there is no overflow check.
// EXPECTED: shlI8(64, 1) == -128, shl(-1, 1) == -2.
contract ShlSignedDiscardsBitsAndCanFlipSign {
    function shlI8(int8 a, uint256 n) public pure returns (int8) {
        return a << n;
    }

    function shl(int256 a, uint256 n) public pure returns (int256) {
        return a << n;
    }
}