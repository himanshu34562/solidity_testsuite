// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a memory-located dynamic array can be allocated with a
// fixed size via `new T[](n)` -- but even though its size is fixed at
// allocation time, it does NOT support push/pop (that's storage-only
// behavior). This is a genuinely distinct third category from both
// fixed_size (type-level fixed length) and storage dynamic arrays
// (runtime push/pop-resizable) -- memory dynamic arrays are
// allocation-time-fixed but not type-level-fixed.
contract DynamicArrayMemoryFixedSizeAllocation {
    function buildArray(uint256 size) public pure returns (uint256[] memory) {
        uint256[] memory arr = new uint256[](size);
        for (uint256 i = 0; i < size; i++) {
            arr[i] = i * 10;
        }
        return arr;
    }
}