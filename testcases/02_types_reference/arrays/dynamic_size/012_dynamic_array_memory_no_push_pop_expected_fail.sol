// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- push()/pop() are STORAGE-ONLY
// operations, even for dynamic arrays. A memory-located dynamic array
// (even though it's the same T[] type) cannot use push/pop, since its
// size is fixed at allocation time via `new T[](n)`.
// EXPECTED: compile error, "Member \"push\" not found or not visible
// after argument-dependent lookup in uint256[] memory" (or similar).
contract DynamicArrayMemoryNoPushPopExpectedFail {
    function buildAndGrow() public pure returns (uint256[] memory) {
        uint256[] memory arr = new uint256[](3);
        arr.push(42); // should fail: memory arrays have no push, regardless of storage-array capability
        return arr;
    }
}