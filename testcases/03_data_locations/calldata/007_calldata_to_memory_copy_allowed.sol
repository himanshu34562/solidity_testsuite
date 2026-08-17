// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: while calldata itself is immutable, copying its CONTENT
// into a fresh memory location is perfectly legal -- the copy is then
// independently mutable, since it's a separate memory allocation, not
// a write-through to the original calldata region.
contract CalldataToMemoryCopyAllowed {
    function copyAndMutate(uint256[] calldata arr) external pure returns (uint256[] memory) {
        uint256[] memory copy = arr; // calldata -> memory copy, implicit
        copy[0] = 999; // legal: mutating the independent memory copy
        return copy;
    }
}