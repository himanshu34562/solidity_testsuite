// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the same addition in checked (default) and unchecked
// context. Checked reverts on overflow; unchecked wraps modulo 2^N,
// where N is the width of the OPERAND type (8 bits here, not 256).
// EXPECTED: checkedAdd(200, 100) reverts with Panic(0x11),
// uncheckedAdd(200, 100) == 44, uncheckedAddU256(type(uint256).max, 1) == 0.
contract AdditionCheckedVsUnchecked {
    function checkedAdd(uint8 a, uint8 b) public pure returns (uint8) {
        return a + b;
    }

    function uncheckedAdd(uint8 a, uint8 b) public pure returns (uint8) {
        unchecked {
            return a + b;
        }
    }

    function uncheckedAddU256(uint256 a, uint256 b) public pure returns (uint256) {
        unchecked {
            return a + b;
        }
    }
}
