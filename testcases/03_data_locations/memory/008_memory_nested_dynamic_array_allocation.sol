// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a memory array of memory arrays -- EACH inner array needs
// its own separate `new` allocation; unlike storage's jagged-array
// push() pattern (arrays/multidimensional/003), there's no "append an
// empty inner array" shortcut in memory -- every inner array must be
// explicitly allocated up front with its own known size.
contract MemoryNestedDynamicArrayAllocation {
    function buildJaggedMemory(uint256 outerSize, uint256 innerSize) public pure returns (uint256[][] memory) {
        uint256[][] memory result = new uint256[][](outerSize);
        for (uint256 i = 0; i < outerSize; i++) {
            result[i] = new uint256[](innerSize); // each inner array separately allocated
            for (uint256 j = 0; j < innerSize; j++) {
                result[i][j] = i * 100 + j;
            }
        }
        return result;
    }
}