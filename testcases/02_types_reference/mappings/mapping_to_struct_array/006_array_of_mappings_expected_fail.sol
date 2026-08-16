// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- CONTRAST with 001 (mapping TO array,
// which works fine). An ARRAY of mappings is different: dynamic
// arrays require their elements to be default-constructible/copyable
// when the array grows (e.g. via push() with no argument, still needs
// a well-defined "empty slot"), and more fundamentally, mapping is not
// a value type that can be an array element type in most contexts.
// EXPECTED: compile error related to mapping not being a valid array
// element type.
contract ArrayOfMappingsExpectedFail {
    mapping(address => uint256)[] public arrayOfMappings; // should fail
}