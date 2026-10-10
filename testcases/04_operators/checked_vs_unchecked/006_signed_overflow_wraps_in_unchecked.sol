// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: signed overflow wraps in two's complement in unchecked
// context, crossing between the maximum and minimum values. Checked
// context reverts for all three operations.
// EXPECTED: uncheckedAdd(127, 1) == -128, uncheckedSub(-128, 1) == 127,
// uncheckedMul(64, 2) == -128; the checked versions revert with
// Panic(0x11).
contract SignedOverflowWrapsInUnchecked {
    function checkedAdd(int8 a, int8 b) public pure returns (int8) {
        return a + b;
    }

    function uncheckedAdd(int8 a, int8 b) public pure returns (int8) {
        unchecked {
            return a + b;
        }
    }

    function checkedSub(int8 a, int8 b) public pure returns (int8) {
        return a - b;
    }

    function uncheckedSub(int8 a, int8 b) public pure returns (int8) {
        unchecked {
            return a - b;
        }
    }

    function checkedMul(int8 a, int8 b) public pure returns (int8) {
        return a * b;
    }

    function uncheckedMul(int8 a, int8 b) public pure returns (int8) {
        unchecked {
            return a * b;
        }
    }
}
