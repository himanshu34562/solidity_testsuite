// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: three levels of nesting -- confirms the pattern generalizes
// beyond just two levels, with no arbitrary depth limit, mirroring the
// same "no depth limit" confirmation we did for arrays
// (multidimensional/008's 3D fixed array).
contract NestedMappingThreeLevels {
    mapping(address => mapping(uint256 => mapping(bool => uint256))) public data;

    function setValue(address account, uint256 id, bool flag, uint256 value) public {
        data[account][id][flag] = value;
    }

    function getValue(address account, uint256 id, bool flag) public view returns (uint256) {
        return data[account][id][flag];
    }
}