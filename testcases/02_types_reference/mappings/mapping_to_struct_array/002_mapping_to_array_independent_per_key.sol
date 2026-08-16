// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirms each key's array is genuinely independent -- pushing
// to userA's array must not affect userB's array length or contents,
// even though both are conceptually "the same shape" of dynamic array.
// Same correctness property as nested_mapping/003, now for
// mapping-to-array instead of mapping-to-mapping.
contract MappingToArrayIndependentPerKey {
    mapping(address => uint256[]) public userScores;

    function addScore(address user, uint256 score) public {
        userScores[user].push(score);
    }

    function getScoreCount(address user) public view returns (uint256) {
        return userScores[user].length;
    }
}