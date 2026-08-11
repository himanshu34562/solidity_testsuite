// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: 2D fixed array of a small element type (uint8) -- tests
// that storage-slot packing (established in bool/007) correctly
// applies to the INNERMOST dimension's elements, packing multiple
// uint8 values from the same inner array into shared storage slots
// where possible, rather than treating each element as needing its
// own full slot regardless of nesting.
contract TwoDArrayStoragePackingInnerUint8 {
    uint8[4][2] public smallGrid; // 2 rows of 4 uint8s -- each row of 4 likely packs into one slot

    function setAt(uint256 row, uint256 col, uint8 value) public {
        smallGrid[row][col] = value;
    }
}