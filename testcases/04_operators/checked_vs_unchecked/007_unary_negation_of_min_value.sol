// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negating the most negative value of a signed type overflows,
// because -(-128) == 128 does not fit in int8. Checked context reverts;
// unchecked context returns the same minimum value.
// EXPECTED: checkedNeg(-128) reverts with Panic(0x11),
// uncheckedNeg(-128) == -128, uncheckedNeg(5) == -5.
contract UnaryNegationOfMinValue {
    function checkedNeg(int8 x) public pure returns (int8) {
        return -x;
    }

    function uncheckedNeg(int8 x) public pure returns (int8) {
        unchecked {
            return -x;
        }
    }
}
