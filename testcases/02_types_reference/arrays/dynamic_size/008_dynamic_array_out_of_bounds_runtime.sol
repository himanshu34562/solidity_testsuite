// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: same Panic(0x32) out-of-bounds check as fixed_size arrays,
// confirmed here for dynamic arrays with a non-literal index. Compiles
// successfully; revert only happens if called with an out-of-range index.
contract DynamicArrayOutOfBoundsRuntime {
    uint256[] public data;

    function getAt(uint256 index) public view returns (uint256) {
        return data[index]; // reverts with Panic(0x32) if index >= data.length
    }
}