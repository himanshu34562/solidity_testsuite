// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- mappings have no .length member at
// all, since there's no bounded/countable notion of "how many keys are
// set" (this follows directly from 002's key-existence model: there's
// no way to enumerate or count "set" keys without external
// bookkeeping).
// EXPECTED: compile error, "Member \"length\" not found or not visible
// after argument-dependent lookup in mapping(address => uint256)".
contract MappingNoLengthExpectedFail {
    mapping(address => uint256) public balances;

    function getLength() public view returns (uint256) {
        return balances.length; // should fail: mappings have no .length
    }
}