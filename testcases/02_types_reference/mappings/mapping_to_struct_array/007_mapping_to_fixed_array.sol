// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: mapping to a FIXED-size array value type -- contrast with
// 001's dynamic array value type. Each key's fixed array is still
// independently stored, but without push/pop, its layout is more
// predictable (bounded size known at compile time, just like a
// standalone fixed array).
contract MappingToFixedArray {
    mapping(address => uint256[3]) public topThreeScores;

    function setScores(address user, uint256 a, uint256 b, uint256 c) public {
        topThreeScores[user] = [a, b, c];
    }

    function getScore(address user, uint256 index) public view returns (uint256) {
        return topThreeScores[user][index];
    }
}