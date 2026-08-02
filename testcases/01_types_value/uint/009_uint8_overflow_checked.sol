// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: in Solidity >=0.8.0, arithmetic overflow reverts by default
// (checked arithmetic). This should generate overflow-check codegen
// (comparison + revert) around the addition.
// EXPECTED: calling increment() when value == 255 reverts (Panic 0x11).
contract Uint8OverflowChecked {
    uint8 public value = 255;

    function increment() public {
        value = value + 1; // should revert on overflow
    }
}