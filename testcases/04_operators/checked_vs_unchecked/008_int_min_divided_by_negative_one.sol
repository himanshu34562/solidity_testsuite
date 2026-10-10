// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: type(intN).min / -1 is the only division that overflows.
// Checked context reverts; unchecked context returns type(intN).min
// (the raw EVM sdiv result). Divisors are non-literal so this is a
// runtime case. See int/015 for the checked-only version.
// EXPECTED: checkedDiv(-128, -1) reverts with Panic(0x11),
// uncheckedDiv(-128, -1) == -128.
contract IntMinDividedByNegativeOne {
    function checkedDiv(int8 a, int8 b) public pure returns (int8) {
        return a / b;
    }

    function uncheckedDiv(int8 a, int8 b) public pure returns (int8) {
        unchecked {
            return a / b;
        }
    }
}
