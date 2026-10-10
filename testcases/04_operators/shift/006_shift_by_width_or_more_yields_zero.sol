// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: shifting an UNSIGNED value by an amount >= its bit width
// yields 0 for both << and >>; it does not revert and does not wrap the
// shift amount. A converter must handle this explicitly, since the
// native LLVM shift is undefined for amounts >= the bit width.
// EXPECTED: shl8(1, 8) == 0, shr8(255, 8) == 0, shl256(1, 256) == 0,
// shr256(type(uint256).max, 300) == 0.
contract ShiftByWidthOrMoreYieldsZero {
    function shl8(uint8 a, uint256 n) public pure returns (uint8) {
        return a << n;
    }

    function shr8(uint8 a, uint256 n) public pure returns (uint8) {
        return a >> n;
    }

    function shl256(uint256 a, uint256 n) public pure returns (uint256) {
        return a << n;
    }

    function shr256(uint256 a, uint256 n) public pure returns (uint256) {
        return a >> n;
    }
}