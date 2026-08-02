// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: signed underflow at the negative boundary.
// EXPECTED: calling decrement() when value == -128 reverts (Panic 0x11).
contract Int8UnderflowChecked {
    int8 public value = -128; // min for int8

    function decrement() public {
        value = value - 1; // should revert on underflow
    }
}