// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm uninitialized dynamic array defaults to an EMPTY
// array (length 0), not a fixed-size array of zeros -- distinct
// default-value shape from fixed_size arrays (which default to N
// zero-valued elements, since N is baked into the type).
contract DynamicArrayDefaultValue {
    uint256[] public defaultNumbers;

    function getLength() public view returns (uint256) {
        return defaultNumbers.length; // should be 0
    }
}