// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- revisits struct_with_mapping/002's
// finding as the canonical "what cannot live in memory" example for
// this folder specifically: a struct containing a mapping field has
// no valid memory representation at all.
// EXPECTED: compile error, storage-only type restriction.
contract MemoryStructContainingMappingExpectedFail {
    struct Group {
        mapping(address => bool) members;
    }

    function makeGroup() public pure returns (Group memory) {
        Group memory g;
        return g; // should fail
    }
}