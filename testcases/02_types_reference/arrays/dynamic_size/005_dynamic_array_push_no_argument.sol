// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: .push() with NO argument appends a new zero-valued element
// and returns a storage reference to it -- a distinct overload from
// push(value), useful for in-place mutation of the newly appended slot.
contract DynamicArrayPushNoArgument {
    uint256[] public data;

    function addDefaultThenSet(uint256 value) public {
        data.push(); // appends a zero element
        data[data.length - 1] = value; // then set it via the new index
    }
}