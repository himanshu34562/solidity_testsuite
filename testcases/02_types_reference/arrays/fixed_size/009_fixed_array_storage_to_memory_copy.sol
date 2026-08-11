// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: reading a whole fixed array from storage into memory copies
// every element -- distinct codegen path from a single-element read,
// and worth confirming against bool/007-style storage-packing
// awareness: fixed arrays of small element types (e.g. uint8[N]) may
// be tightly packed within storage slots, so the copy logic must
// account for multiple elements sharing a slot, not just one array
// element per slot.
contract FixedArrayStorageToMemoryCopy {
    uint8[5] public packedData = [1, 2, 3, 4, 5]; // uint8 elements likely pack multiple-per-slot

    function getAllPacked() public view returns (uint8[5] memory) {
        return packedData; // full storage -> memory copy
    }

    uint256[3] public wideData = [100, 200, 300]; // uint256 elements, one per slot

    function getAllWide() public view returns (uint256[3] memory) {
        return wideData;
    }
}