// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: multiple separate `new` allocations within the same
// function produce genuinely INDEPENDENT memory regions -- mutating
// one must not affect the other, confirming memory's linear/expanding
// allocator correctly gives each allocation its own non-overlapping
// space.
contract MemoryMultipleAllocationsIndependent {
    function testIndependence() public pure returns (uint256, uint256) {
        uint256[] memory arrA = new uint256[](3);
        uint256[] memory arrB = new uint256[](3);

        arrA[0] = 111;
        arrB[0] = 222;

        return (arrA[0], arrB[0]); // expect (111, 222), no cross-contamination
    }
}