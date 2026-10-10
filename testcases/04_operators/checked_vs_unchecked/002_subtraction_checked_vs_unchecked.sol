// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unsigned subtraction below zero reverts in checked context
// and wraps to the type's maximum in unchecked context.
// EXPECTED: checkedSub(0, 1) reverts with Panic(0x11),
// uncheckedSub(0, 1) == type(uint256).max, uncheckedSubU8(0, 1) == 255.
contract SubtractionCheckedVsUnchecked {
    function checkedSub(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }

    function uncheckedSub(uint256 a, uint256 b) public pure returns (uint256) {
        unchecked {
            return a - b;
        }
    }

    function uncheckedSubU8(uint8 a, uint8 b) public pure returns (uint8) {
        unchecked {
            return a - b;
        }
    }
}
