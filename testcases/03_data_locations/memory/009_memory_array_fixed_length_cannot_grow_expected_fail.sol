// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- reinforces
// arrays/dynamic_size/012's finding: a memory dynamic array's size is
// FIXED at allocation time via `new`, and push() is unavailable
// regardless of the fact that it's the same T[] type as a
// growable storage array.
// EXPECTED: compile error, "Member \"push\" not found or not visible
// after argument-dependent lookup in uint256[] memory".
contract MemoryArrayFixedLengthCannotGrowExpectedFail {
    function tryToGrow(uint256 initialSize) public pure returns (uint256[] memory) {
        uint256[] memory arr = new uint256[](initialSize);
        arr.push(999); // should fail: memory arrays cannot grow after allocation
        return arr;
    }
}