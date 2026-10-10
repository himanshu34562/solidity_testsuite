// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: packing is entirely determined by DECLARATION ORDER --
// this file declares the same set of variables as file 001 but in a
// different order, producing a genuinely different packing outcome
// (address first means it alone nearly fills slot 0, leaving no room
// for the two bools and uint8 that follow -- they now form their own
// separate packed slot instead).
contract ReorderingDeclarationsChangesPacking {
    address public addr = address(0x1234567890123456789012345678901234567890); // slot 0, offset 0 (20 bytes)
    bool public flagA = true;      // slot 0, offset 20 (fits: 20+1=21 <= 32)
    uint8 public smallNum = 7;     // slot 0, offset 21
    bool public flagB = false;     // slot 0, offset 22 -- still all fit in slot 0 here too
    // NOTE: this particular reordering happens to still fit everything in
    // one slot (21+1+1+1=23 <= 32) -- included specifically to show that
    // while the TOTAL byte count is order-independent, the actual OFFSETS
    // within the slot are order-dependent, which matters once you add a
    // variable that tips the total over 32 bytes at a different point
    // than file 001 would.
}