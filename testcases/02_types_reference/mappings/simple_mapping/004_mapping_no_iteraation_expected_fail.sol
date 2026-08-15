// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- mappings cannot be iterated directly
// (no for-each over keys/values, since there's no enumerable key set
// tracked internally). Attempting to use one as an iterable in a
// for-loop condition (via .length, since that's the only mechanism a
// for-loop could use here) fails for the same underlying reason as 003.
// EXPECTED: compile error, same "length" member-not-found error as 003.
contract MappingNoIterationExpectedFail {
    mapping(address => uint256) public balances;

    function sumAll() public view returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < balances.length; i++) {
            // should fail to compile: no .length to iterate against
        }
        return total;
    }
}