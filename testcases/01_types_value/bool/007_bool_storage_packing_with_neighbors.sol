// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: bool occupies 1 byte in storage layout, so consecutive small
// types should be PACKED into the same 32-byte storage slot rather than
// each getting its own slot. This tests that the converter's storage
// layout logic correctly packs bool alongside uint8/address, matching
// solc's slot-packing rules (declaration order matters).
// EXPECTED LAYOUT: flag1, smallNum, flag2, and addr should all share
// slot 0 (1 + 1 + 1 + 20 = 23 bytes, fits in one 32-byte slot).
// bigNum then starts fresh at slot 1 since it needs the full 32 bytes.
contract BoolStoragePackingWithNeighbors {
    bool public flag1 = true;
    uint8 public smallNum = 7;
    bool public flag2 = false;
    address public addr = address(0x1234567890123456789012345678901234567890);
    uint256 public bigNum = 999; // should NOT pack with the above, needs own slot
}