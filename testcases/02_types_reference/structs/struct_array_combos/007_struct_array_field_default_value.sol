// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm zero-initialization applies correctly to array
// fields within a struct -- a fixed array field defaults to all-zero
// elements, a dynamic array field defaults to empty (length 0), same
// per-kind default rules established in arrays/fixed_size and
// arrays/dynamic_size, now confirmed when the array is a struct field
// rather than a standalone variable.
contract StructArrayFieldDefaultValue {
    struct Data {
        uint256[3] fixedPart;
        uint256[] dynamicPart;
    }

    Data private data;

    function getFixedDefault(uint256 index) public view returns (uint256) {
        return data.fixedPart[index]; // should be 0
    }

    function getDynamicLength() public view returns (uint256) {
        return data.dynamicPart.length; // should be 0
    }
}