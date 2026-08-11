// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a struct containing a mapping field -- the mapping's
// contents live in their own keccak256-derived storage region, keyed
// by the struct's own base slot as part of the hash input. This
// pairing (struct + mapping) can ONLY exist in storage.
contract StructWithMappingBasic {
    struct Group {
        string name;
        mapping(address => bool) members;
    }

    Group public group;

    function setName(string memory name) public {
        group.name = name;
    }

    function addMember(address member) public {
        group.members[member] = true;
    }

    function isMember(address member) public view returns (bool) {
        return group.members[member];
    }
}