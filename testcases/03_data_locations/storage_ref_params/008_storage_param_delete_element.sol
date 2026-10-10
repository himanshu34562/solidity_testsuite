// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: `delete` applied to an ELEMENT reached through a storage
// parameter resets that element in the original storage array to its
// default value. (Deleting the reference parameter itself is not
// allowed -- see storage/010.)
contract StorageParamDeleteElement {
    uint256[] public data;

    constructor() {
        data.push(1);
        data.push(2);
        data.push(3);
    }

    function clearAt(uint256[] storage arr, uint256 i) internal {
        delete arr[i];
    }

    function run() public {
        clearAt(data, 1);   // data becomes [1, 0, 3]
    }
}