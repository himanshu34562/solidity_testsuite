// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: exponentiation overflow reverts in checked context and wraps
// modulo 2^N in unchecked context.
// EXPECTED: checkedPow(2, 8) reverts with Panic(0x11),
// uncheckedPow(2, 8) == 0 (uint8), uncheckedPowU256(2, 256) == 0,
// uncheckedPowU256(2, 255) == 2**255.
contract ExponentiationCheckedVsUnchecked {
    function checkedPow(uint8 base, uint8 exp) public pure returns (uint8) {
        return base ** exp;
    }

    function uncheckedPow(uint8 base, uint8 exp) public pure returns (uint8) {
        unchecked {
            return base ** exp;
        }
    }

    function uncheckedPowU256(uint256 base, uint256 exp) public pure returns (uint256) {
        unchecked {
            return base ** exp;
        }
    }
}
