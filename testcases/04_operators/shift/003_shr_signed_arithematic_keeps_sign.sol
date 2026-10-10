// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: right shift on a signed integer is an ARITHMETIC shift: the
// sign bit is replicated, so negative values stay negative. A converter
// must lower this to ashr, not lshr.
// EXPECTED: shr(-16, 2) == -4, shr(16, 2) == 4.
contract ShrSignedArithmeticKeepsSign {
    function shr(int256 a, uint256 n) public pure returns (int256) {
        return a >> n;
    }

    function shrI8(int8 a, uint256 n) public pure returns (int8) {
        return a >> n;
    }
}