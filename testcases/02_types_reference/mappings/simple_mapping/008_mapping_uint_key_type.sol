// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: mapping keyed by uint rather than address -- confirms the
// key type is genuinely generic across value types (not
// address-specific), commonly used for ID-based lookups.
contract MappingUintKeyType {
    mapping(uint256 => string) public itemNames;

    function setName(uint256 id, string memory name) public {
        itemNames[id] = name;
    }

    function getName(uint256 id) public view returns (string memory) {
        return itemNames[id];
    }
}