// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: implicit upcast (uint8 -> uint256) should zero-extend,
// producing simple extension codegen with no masking/checks needed.
contract UintUpcastWidening {
    function widen(uint8 x) public pure returns (uint256) {
        uint256 y = x; // implicit widening
        return y;
    }
}