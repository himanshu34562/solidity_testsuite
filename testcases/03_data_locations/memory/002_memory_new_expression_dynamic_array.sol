// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: `new T[](n)` is the explicit memory-allocation expression
// for dynamic arrays -- confirms this is the mechanism by which memory
// gets a fresh, appropriately-sized region, distinct from a fixed-size
// array (which is sized by its type, no `new` needed).
contract MemoryNewExpressionDynamicArray {
    function buildArray(uint256 size) public pure returns (uint256[] memory) {
        uint256[] memory arr = new uint256[](size);
        for (uint256 i = 0; i < size; i++) {
            arr[i] = i;
        }
        return arr;
    }
}