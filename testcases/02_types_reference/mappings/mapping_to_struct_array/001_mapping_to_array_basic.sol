// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: mapping whose value type is a dynamic array -- each key
// gets its OWN independent dynamic array, each requiring its own
// derived storage region (the array's base slot is itself derived
// from the mapping key, and the array's actual elements are further
// derived from THAT base slot).
contract MappingToArrayBasic {
    mapping(address => uint256[]) public userScores;

    function addScore(address user, uint256 score) public {
        userScores[user].push(score);
    }

    function getScoreCount(address user) public view returns (uint256) {
        return userScores[user].length;
    }

    function getScore(address user, uint256 index) public view returns (uint256) {
        return userScores[user][index];
    }
}