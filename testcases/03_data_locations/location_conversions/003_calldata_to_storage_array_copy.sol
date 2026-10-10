// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a calldata array can be assigned directly to a storage
// state variable; the elements are copied from calldata into storage.
contract CalldataToStorageArrayCopy {
    uint256[] public data;

    function store(uint256[] calldata c) external {
        data = c;     // calldata -> storage: copy
    }
}