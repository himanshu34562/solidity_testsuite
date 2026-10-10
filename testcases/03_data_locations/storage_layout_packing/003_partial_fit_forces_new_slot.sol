// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: if a type doesn't fully fit in the CURRENT slot's remaining
// space, it starts a new slot entirely -- solc does not split a single
// variable's value across two slots.
contract PartialFitForcesNewSlot {
    // uint128 is 16 bytes. First one takes slot 0 (16 of 32 bytes used).
    uint128 public first = 1;   // slot 0, offset 0
    // Second uint128 (16 bytes) fits in the remaining 16 bytes of slot 0.
    uint128 public second = 2;  // slot 0, offset 16 -- exactly fills slot 0
    // uint256 needs a fresh slot regardless.
    uint256 public third = 3;   // slot 1
    // This bytes20 (20 bytes) would NOT fit in slot 1's remaining 0 bytes,
    // and even against a hypothetical partial remainder, if it doesn't
    // fit exactly, it moves to the next slot entirely rather than splitting.
    uint128 public fourth = 4;  // slot 2 -- fresh slot, doesn't try to split
}