// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: passing the same state array as two different storage
// parameters makes both parameters refer to the same storage, so a
// write through one is immediately visible through the other.
contract TwoStorageParamsAliasSameArray {
    uint256[] public data;

    constructor() {
        data.push(1);
    }

    function writeThenRead(uint256[] storage a, uint256[] storage b) internal returns (uint256) {
        a[0] = 5;
        return b[0];   // 5, because a and b are the same storage
    }

    function run() public returns (uint256) {
        return writeThenRead(data, data);
    }
}