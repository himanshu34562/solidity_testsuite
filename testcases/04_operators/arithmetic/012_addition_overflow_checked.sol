// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: addition overflow reverts by default in >=0.8.0 (checked
// arithmetic).
// EXPECTED: add(type(uint256).max, 1) reverts with Panic(0x11);
// addSmall(255, 1) reverts the same way for uint8.
contract AdditionOverflowChecked {
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    function addSmall(uint8 a, uint8 b) public pure returns (uint8) {
        return a + b;
    }
}