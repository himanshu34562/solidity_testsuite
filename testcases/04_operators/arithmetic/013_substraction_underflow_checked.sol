// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: subtraction underflow on unsigned types reverts by default
// in >=0.8.0.
// EXPECTED: sub(0, 1) reverts with Panic(0x11).
contract SubtractionUnderflowChecked {
    function sub(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }
}