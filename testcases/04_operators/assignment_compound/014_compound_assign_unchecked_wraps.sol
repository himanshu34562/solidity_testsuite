// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: inside an `unchecked` block compound assignment wraps around
// modulo 2^N instead of reverting.
// EXPECTED: wrapAdd(255, 1) == 0, wrapSub(0) == type(uint256).max,
// wrapMul(128, 2) == 0 (uint8).
contract CompoundAssignUncheckedWraps {
    function wrapAdd(uint8 a, uint8 b) public pure returns (uint8) {
        unchecked {
            a += b;
        }
        return a;
    }

    function wrapSub(uint256 a) public pure returns (uint256) {
        unchecked {
            a -= 1;
        }
        return a;
    }

    function wrapMul(uint8 a, uint8 b) public pure returns (uint8) {
        unchecked {
            a *= b;
        }
        return a;
    }
}