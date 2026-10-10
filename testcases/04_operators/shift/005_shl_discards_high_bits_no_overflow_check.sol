// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: << never reverts on overflow; bits shifted past the type's
// width are silently discarded. Contrast with multiplication by 2,
// which IS overflow-checked and reverts.
// EXPECTED: shlU8(200, 1) == 144, shlMax(type(uint256).max) ==
// type(uint256).max - 1, mulByTwo(type(uint256).max) reverts with
// Panic(0x11).
contract ShlDiscardsHighBitsNoOverflowCheck {
    function shlU8(uint8 a, uint256 n) public pure returns (uint8) {
        return a << n;
    }

    function shlMax(uint256 a) public pure returns (uint256) {
        return a << 1;
    }

    function mulByTwo(uint256 a) public pure returns (uint256) {
        return a * 2;
    }
}