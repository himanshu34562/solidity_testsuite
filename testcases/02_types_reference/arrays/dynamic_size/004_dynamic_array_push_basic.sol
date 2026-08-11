// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: .push(value) appends an element and grows the array's
// length by 1 -- only available on dynamic arrays (contrast with
// fixed_size/008's expected-fail case).
contract DynamicArrayPushBasic {
    uint256[] public data;

    function addValue(uint256 value) public {
        data.push(value);
    }

    function getLength() public view returns (uint256) {
        return data.length;
    }
}