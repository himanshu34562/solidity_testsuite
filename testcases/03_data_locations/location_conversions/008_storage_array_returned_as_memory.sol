// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a public function returning a storage array must declare a
// memory return type; the return statement performs the storage ->
// memory copy implicitly. (A storage pointer cannot be returned from a
// public function -- see storage/005.)
contract StorageArrayReturnedAsMemory {
    uint256[] private data;

    function add(uint256 v) public {
        data.push(v);
    }

    function getAll() public view returns (uint256[] memory) {
        return data;   // storage -> memory copy at return
    }
}