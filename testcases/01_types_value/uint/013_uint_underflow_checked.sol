// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: subtraction underflow also reverts by default in >=0.8.0.
// EXPECTED: calling decrement() when value == 0 reverts (Panic 0x11).
contract UintUnderflowChecked {
    uint256 public value = 0;

    function decrement() public {
        value = value - 1; // should revert on underflow
    }
}