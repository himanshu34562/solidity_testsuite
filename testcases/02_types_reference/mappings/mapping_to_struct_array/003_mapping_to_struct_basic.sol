// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MappingToStructBasic {
    struct Profile {
        string name;
        uint256 age;
    }

    mapping(address => Profile) public profiles;

    function setProfile(address user, string memory name, uint256 age) public {
        profiles[user] = Profile({name: name, age: age});
    }

    function getProfile(address user) public view returns (string memory, uint256) {
        Profile storage p = profiles[user];
        return (p.name, p.age);
    }
}