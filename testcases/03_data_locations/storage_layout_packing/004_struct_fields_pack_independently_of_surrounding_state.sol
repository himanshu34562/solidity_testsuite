// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a struct's OWN fields pack among themselves using the same
// rules as top-level state variables, but the struct itself always
// starts at a fresh slot boundary -- it doesn't share a slot with
// whatever state variable came immediately before it.
contract StructFieldsPackIndependentlyOfSurroundingState {
    bool public flagBefore = true; // slot 0

    struct Packed {
        bool a;      // struct's own slot 0, offset 0
        uint8 b;     // struct's own slot 0, offset 1
        uint16 c;    // struct's own slot 0, offset 2
    }
    Packed public packed; // starts at slot 1, NOT packed into slot 0 with flagBefore

    bool public flagAfter = true; // slot 2 -- Packed's single slot (slot 1) is now full... 
    // actually Packed only used part of slot 1 (4 of 32 bytes) -- flagAfter
    // does NOT reuse the remaining bytes of slot 1, since a new state
    // variable declaration following a struct starts at the next fresh slot.
}