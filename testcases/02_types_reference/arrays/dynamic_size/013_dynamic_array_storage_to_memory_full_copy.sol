// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: reading an entire dynamic storage array into memory copies
// the current length AND all elements -- unlike fixed arrays, the
// amount of data copied is determined at runtime by the array's
// current length, not baked into the type.
contract DynamicArrayStorageToMemoryFullCopy {
    uint256[] public data;

    function addValue(uint256 value) public {
        data.push(value);
    }

    function getAll() public view returns (uint256[] memory) {
        return data; // runtime-length-dependent storage -> memory copy
    }
}