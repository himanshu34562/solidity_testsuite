// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: an internal function can take a storage array as an
// explicit `storage` parameter. The parameter is a reference to the
// caller's state variable, so mutations inside the function change the
// original storage array directly (no copy is made).
contract StorageArrayParamInternalMutation {
    uint256[] public data;

    function appendTwice(uint256[] storage arr, uint256 v) internal {
        arr.push(v);
        arr.push(v);
    }

    function run() public {
        appendTwice(data, 7);   // data now has two elements
    }
}