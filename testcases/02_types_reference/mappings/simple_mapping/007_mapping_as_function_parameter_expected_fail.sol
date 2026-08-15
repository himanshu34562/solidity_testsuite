// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- mappings cannot be passed as function
// parameters at all (not even as a storage reference to an internal
// function), since mapping types can only appear as state variables or
// fields of storage-only structs, per solc's restrictions.
// EXPECTED: compile error, mapping type not allowed as parameter type
// (or similar -- specific wording may reference "storage" location
// requirement combined with parameter-passing restrictions).
contract MappingAsFunctionParameterExpectedFail {
    function readValue(mapping(address => uint256) storage m, address key) internal view returns (uint256) {
        return m[key]; // should fail: mappings cannot be function parameters
    }
}