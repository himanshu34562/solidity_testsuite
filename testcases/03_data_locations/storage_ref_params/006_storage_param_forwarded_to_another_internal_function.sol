// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a storage parameter can be forwarded unchanged to another
// internal function; the reference is passed along, not copied.
contract StorageParamForwardedToAnotherInternalFunction {
    uint256[] public data;

    function inner(uint256[] storage arr) internal {
        arr.push(1);
    }

    function outer(uint256[] storage arr) internal {
        inner(arr);
        inner(arr);
    }

    function run() public {
        outer(data);   // data ends with two elements
    }
}