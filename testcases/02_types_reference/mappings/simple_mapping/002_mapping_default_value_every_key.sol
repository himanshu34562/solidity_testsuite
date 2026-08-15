// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unlike arrays (which have a notion of "empty," length 0),
// EVERY possible key in a mapping already "exists" with the zero value
// of the value type by default -- there is no way to distinguish
// "key was never set" from "key was explicitly set to zero." This is
// a fundamentally different default-value model from every other
// reference type covered so far.
contract MappingDefaultValueEveryKey {
    mapping(address => uint256) public balances;

    function getUnsetBalance(address account) public view returns (uint256) {
        return balances[account]; // returns 0, indistinguishable from an explicit balances[account] = 0
    }
}