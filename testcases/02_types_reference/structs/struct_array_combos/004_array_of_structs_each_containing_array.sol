// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the most compositionally complex case in this folder -- a
// dynamic ARRAY of structs, where EACH struct itself contains a
// dynamic array field. Combines array_of_structs/'s pattern with this
// folder's struct-containing-array pattern, nested one level further.
contract ArrayOfStructsEachContainingArray {
    struct Team {
        string name;
        uint256[] memberIds;
    }

    Team[] public teams;

    function addTeam(string memory name) public {
        teams.push();
        teams[teams.length - 1].name = name;
    }

    function addMember(uint256 teamIndex, uint256 memberId) public {
        teams[teamIndex].memberIds.push(memberId);
    }

    function getMemberCount(uint256 teamIndex) public view returns (uint256) {
        return teams[teamIndex].memberIds.length;
    }
}