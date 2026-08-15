// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: mapping with a bool value type -- a very common real-world
// pattern (membership/whitelist checks), worth its own dedicated test
// since bool's 1-byte size interacts with the mapping's storage-slot
// computation differently than a full-width uint256 value would.
contract MappingBoolValueType {
    mapping(address => bool) public isWhitelisted;

    function addToWhitelist(address account) public {
        isWhitelisted[account] = true;
    }

    function checkWhitelisted(address account) public view returns (bool) {
        return isWhitelisted[account];
    }
}