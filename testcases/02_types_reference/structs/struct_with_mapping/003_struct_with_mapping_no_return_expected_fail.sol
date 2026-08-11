// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- following directly from 002, a struct
// containing a mapping also cannot be a function's RETURN type at all
// (public/external functions can't return storage references, and it
// can't be memory-encoded either).
// EXPECTED: compile error, similar storage-only restriction.
contract StructWithMappingNoReturnExpectedFail {
    struct Group {
        string name;
        mapping(address => bool) members;
    }

    Group public group;

    function getGroup() public view returns (Group memory) {
        return group; // should fail: cannot copy/return a mapping-containing struct
    }
}