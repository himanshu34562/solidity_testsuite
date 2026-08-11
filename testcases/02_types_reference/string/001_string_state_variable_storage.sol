// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StringStateVariableStorage {
    string public name = "sol2bc";

    function setName(string memory newName) public {
        name = newName; // memory -> storage copy
    }

    function getName() public view returns (string memory) {
        return name; // storage -> memory copy
    }
}