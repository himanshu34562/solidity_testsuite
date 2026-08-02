// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: `unchecked` block should suppress the overflow check codegen
// entirely, producing wraparound behavior (255 + 1 = 0) with NO revert path
// in the emitted IR for this specific addition.
contract Uint8OverflowUnchecked {
    uint8 public value = 255;

    function increment() public {
        unchecked {
            value = value + 1; // wraps to 0, no revert
        }
    }
}