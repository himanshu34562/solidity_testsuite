// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: string as a mapping value type -- storage layout for a
// dynamic type inside a mapping slot is distinct from a simple value
// type mapping (bytes/string values are stored via their own separate
// keccak256-derived storage region, not inline in the mapping slot).
contract StringInMappingValue {
    mapping(address => string) public nicknames;

    function setNickname(string memory nickname) public {
        nicknames[msg.sender] = nickname;
    }
}