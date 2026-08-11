// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: CONTRAST with fixed_size/004 -- .length on a dynamic array
// is NOT a compile-time constant, it's an actual runtime storage/memory
// read, since the length can change over the contract's lifetime via
// push/pop. This should emit a real length-lookup instruction in
// codegen, not fold to a literal.
contract DynamicArrayLengthRuntimeRead {
    uint256[] public data;

    function getLength() public view returns (uint256) {
        return data.length; // genuine runtime read, length is mutable
    }
}