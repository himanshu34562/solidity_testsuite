// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DynamicArrayUint256Basic {
    uint256[] public numbers;

    function setAt(uint256 index, uint256 value) public {
        numbers[index] = value;
    }

    function getAt(uint256 index) public view returns (uint256) {
        return numbers[index];
    }
}