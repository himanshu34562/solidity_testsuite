// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: assigning a memory array to a storage state variable copies
// the elements into storage (resizing the storage array to match).
// Later changes to the memory array do not affect storage.
contract MemoryToStorageArrayCopy {
    uint256[] public data;

    function store() public {
        uint256[] memory m = new uint256[](3);
        m[0] = 1;
        m[1] = 2;
        m[2] = 3;
        data = m;     // memory -> storage: copy
        m[0] = 99;    // does not affect data[0]
    }
}