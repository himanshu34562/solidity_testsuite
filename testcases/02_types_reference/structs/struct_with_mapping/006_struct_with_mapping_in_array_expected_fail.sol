// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- CONTRAST with array_of_structs/, which
// worked fine for structs WITHOUT mappings. A DYNAMIC array of
// mapping-containing structs specifically cannot use .push() with a
// value argument (since that would require constructing/copying a new
// struct instance, and mapping-containing structs can't be constructed
// as standalone values this way).
// EXPECTED: compile error related to constructing/copying the
// mapping-containing struct via push's value argument.
contract StructWithMappingInArrayExpectedFail {
    struct Group {
        string name;
        mapping(address => bool) members;
    }

    Group[] public groups;

    function addGroup(string memory name) public {
        groups.push(Group({name: name})); // should fail: cannot construct a Group value inline (contains a mapping)
    }
}