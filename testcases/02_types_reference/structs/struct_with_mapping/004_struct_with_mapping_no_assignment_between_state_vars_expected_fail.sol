// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- even storage-to-storage assignment
// between two DIFFERENT struct state variables containing mappings is
// disallowed, since the mapping contents cannot be bulk-copied (there's
// no way to enumerate and copy every key in a mapping).
// EXPECTED: compile error, "This variable is of storage pointer type
// and can be assigned only storage locations that fit its type" (or a
// mapping-copy-specific error).
contract StructWithMappingNoAssignmentBetweenStateVarsExpectedFail {
    struct Group {
        string name;
        mapping(address => bool) members;
    }

    Group public groupA;
    Group public groupB;

    function copyGroup() public {
        groupA = groupB; // should fail: cannot bulk-copy a mapping's contents
    }
}