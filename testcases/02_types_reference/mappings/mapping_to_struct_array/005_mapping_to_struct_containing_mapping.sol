// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: mapping to a struct that contains ANOTHER mapping field --
// combines the storage-only/getter-omission rules from
// struct_with_mapping/ with the mapping-to-struct pattern here. The
// outer `groups` mapping itself is fine to be public (mapping getters
// are unaffected by the inner struct's mapping field, unlike a plain
// struct state variable's getter), but the Group struct itself
// couldn't be used as, say, a memory return type anywhere.
contract MappingToStructContainingMapping {
    struct Group {
        string name;
        mapping(address => bool) members;
    }

    mapping(uint256 => Group) public groups;

    function createGroup(uint256 groupId, string memory name) public {
        groups[groupId].name = name;
    }

    function addMember(uint256 groupId, address member) public {
        groups[groupId].members[member] = true;
    }

    function isMember(uint256 groupId, address member) public view returns (bool) {
        return groups[groupId].members[member];
    }
}