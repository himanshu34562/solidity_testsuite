// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unlike storage -> memory, a memory -> memory assignment
// does NOT copy. Both variables refer to the same memory region, so a
// write through one is visible through the other. Passing a memory
// array to an internal function with a memory parameter also aliases.
contract MemoryToMemoryAssignmentAliases {
    function mutate(uint256[] memory x) internal pure {
        x[0] = 7;
    }

    function viaAssignment() public pure returns (uint256) {
        uint256[] memory a = new uint256[](2);
        uint256[] memory b = a;   // same memory region, no copy
        b[0] = 42;
        return a[0];              // 42
    }

    function viaInternalCall() public pure returns (uint256) {
        uint256[] memory a = new uint256[](2);
        mutate(a);                // callee writes through the same reference
        return a[0];              // 7
    }
}