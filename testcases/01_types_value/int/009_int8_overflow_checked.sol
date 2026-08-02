// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: signed overflow at the positive boundary.
// EXPECTED: calling increment() when value == 127 reverts (Panic 0x11).
contract Int8OverflowChecked {
    int8 public value = 127; // max for int8

    function increment() public {
        value = value + 1; // should revert on overflow
    }
}