// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: CONTRAST with 004 -- while copying/assigning between two
// mapping-containing structs is disallowed, obtaining a storage
// REFERENCE (alias, not a copy) to one is perfectly fine. This is the
// only legal way to "hand off" a mapping-containing struct.
contract StructWithMappingStorageReferenceWorks {
    struct Group {
        string name;
        mapping(address => bool) members;
    }

    Group public group;

    function addMemberViaReference(address member) public {
        Group storage g = group; // storage REFERENCE, not a copy -- this is legal
        g.members[member] = true;
    }
}