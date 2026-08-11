// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: .pop() removes the last element and shrinks length by 1.
contract DynamicArrayPop {
    uint256[] public data;

    function addValue(uint256 value) public {
        data.push(value);
    }

    function removeLast() public {
        data.pop();
    }

    function getLength() public view returns (uint256) {
        return data.length;
    }
}