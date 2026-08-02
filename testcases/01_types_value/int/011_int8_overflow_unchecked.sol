// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unchecked block should wrap signed overflow via two's complement
// (127 + 1 wraps to -128), with no revert path in codegen for this addition.
contract Int8OverflowUnchecked {
    int8 public value = 127;

    function increment() public {
        unchecked {
            value = value + 1; // wraps to -128, no revert
        }
    }
}