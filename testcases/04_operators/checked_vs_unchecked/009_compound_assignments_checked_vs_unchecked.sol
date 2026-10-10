// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: compound assignment operators obey the surrounding checked or
// unchecked context just like their plain forms.
// EXPECTED: checkedAddAssign(200, 100) reverts with Panic(0x11),
// uncheckedAddAssign(200, 100) == 44, uncheckedSubAssign(0, 1) == 255,
// uncheckedMulAssign(16, 16) == 0.
contract CompoundAssignmentsCheckedVsUnchecked {
    function checkedAddAssign(uint8 a, uint8 b) public pure returns (uint8) {
        a += b;
        return a;
    }

    function uncheckedAddAssign(uint8 a, uint8 b) public pure returns (uint8) {
        unchecked {
            a += b;
        }
        return a;
    }

    function uncheckedSubAssign(uint8 a, uint8 b) public pure returns (uint8) {
        unchecked {
            a -= b;
        }
        return a;
    }

    function uncheckedMulAssign(uint8 a, uint8 b) public pure returns (uint8) {
        unchecked {
            a *= b;
        }
        return a;
    }
}
