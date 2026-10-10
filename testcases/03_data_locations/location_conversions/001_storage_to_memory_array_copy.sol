// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: assigning a storage array to a memory variable creates a
// full COPY in memory -- later changes to the memory copy do not
// write back to storage. Baseline storage -> memory conversion.
contract StorageToMemoryArrayCopy {
    uint256[] public data;

    constructor() {
        data.push(1);
        data.push(2);
        data.push(3);
    }

    function copyAndMutate() public view returns (uint256, uint256) {
        uint256[] memory m = data;   // storage -> memory: copy
        m[0] = 99;                   // only the memory copy changes
        return (m[0], data[0]);      // (99, 1)
    }
}