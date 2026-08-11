// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a struct containing a mapping field
// cannot be instantiated in memory, since mappings have no meaningful
// memory representation (no bounded size, no copyable contents).
// EXPECTED: compile error, "Type struct StructWithMappingMemoryExpectedFail.Group
// is only valid in storage because it contains a mapping" (or similar).
contract StructWithMappingMemoryExpectedFail {
    struct Group {
        string name;
        mapping(address => bool) members;
    }

    function makeGroup() public pure returns (Group memory) {
        Group memory g; // should fail: Group contains a mapping, storage-only
        return g;
    }
}