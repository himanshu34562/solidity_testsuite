// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: CONTRAST with 006's negative case -- the CORRECT pattern
// for a dynamic array of mapping-containing structs: push() with NO
// argument (appends a zero-valued slot), then populate fields via a
// storage reference to the newly appended element.
contract StructWithMappingInArrayCorrectPattern {
    struct Group {
        string name;
        mapping(address => bool) members;
    }

    Group[] public groups;

    function addGroup(string memory name) public {
        groups.push(); // appends an empty slot, no construction/copy needed
        Group storage newGroup = groups[groups.length - 1];
        newGroup.name = name;
    }

    function addMemberToGroup(uint256 groupIndex, address member) public {
        groups[groupIndex].members[member] = true;
    }
}