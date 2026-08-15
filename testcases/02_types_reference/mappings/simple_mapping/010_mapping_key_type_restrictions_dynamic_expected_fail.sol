// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- mapping key types are restricted to
// value types (or bytes/string), and CANNOT themselves be a dynamic
// array, mapping, or struct type. This is a genuinely easy thing to
// assume might work by analogy with the value type's flexibility, but
// key types have their own, stricter set of allowed types.
// EXPECTED: compile error, key type not allowed / only elementary
// types plus bytes/string can be used as mapping keys.
contract MappingKeyTypeRestrictionsDynamicExpectedFail {
    mapping(uint256[] => uint256) public invalidMapping; // should fail: array as key type
}