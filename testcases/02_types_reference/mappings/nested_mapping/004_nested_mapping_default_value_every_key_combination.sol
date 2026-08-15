// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the "every key already exists with a zero default" rule
// (simple_mapping/002) extends to EVERY combination of keys across
// every nesting level -- an entirely unset (owner, spender) pair
// returns 0, same as a single-level mapping's unset key.
contract NestedMappingDefaultValueEveryKeyCombination {
    mapping(address => mapping(address => uint256)) public allowances;

    function getUnsetAllowance(address owner, address spender) public view returns (uint256) {
        return allowances[owner][spender]; // returns 0
    }
}