// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline right shift on unsigned integers. Unsigned >> is a
// logical shift: zeros are shifted in from the left.
// EXPECTED: shrU256(16, 4) == 1, shrU8(128, 7) == 1.
contract ShrUnsignedBasic {
    function shrU256(uint256 a, uint256 n) public pure returns (uint256) {
        return a >> n;
    }

    function shrU8(uint8 a, uint256 n) public pure returns (uint8) {
        return a >> n;
    }
}