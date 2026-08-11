// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm uninitialized struct elements within an array
// default to all-zero fields -- zero-initialization guarantee
// composing correctly across two nesting levels (array of struct of
// scalar fields).
contract ArrayOfStructsDefaultValue {
    struct Record {
        uint256 value;
        bool flag;
    }

    Record[2] public defaultRecords;

    function getDefault(uint256 index) public view returns (uint256, bool) {
        Record storage r = defaultRecords[index];
        return (r.value, r.flag); // should be (0, false)
    }
}