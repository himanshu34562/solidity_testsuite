// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: multiplication overflow reverts in checked context and wraps
// modulo 2^N in unchecked context. For uint256 the unchecked result is
// the low 256 bits of the full 512-bit product.
// EXPECTED: checkedMul(16, 16) reverts with Panic(0x11),
// uncheckedMul(16, 16) == 0 (256 mod 256),
// uncheckedMulU256(type(uint256).max, 2) == type(uint256).max - 1.
contract MultiplicationCheckedVsUnchecked {
    function checkedMul(uint8 a, uint8 b) public pure returns (uint8) {
        return a * b;
    }

    function uncheckedMul(uint8 a, uint8 b) public pure returns (uint8) {
        unchecked {
            return a * b;
        }
    }

    function uncheckedMulU256(uint256 a, uint256 b) public pure returns (uint256) {
        unchecked {
            return a * b;
        }
    }
}
