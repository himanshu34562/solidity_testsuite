// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a helper taking a storage array parameter can read and
// write several elements, e.g. swapping two of them in the caller's
// state array.
contract StorageParamSwapElements {
    uint256[] public data;

    constructor() {
        data.push(1);
        data.push(2);
    }

    function swap(uint256[] storage arr, uint256 i, uint256 j) internal {
        uint256 tmp = arr[i];
        arr[i] = arr[j];
        arr[j] = tmp;
    }

    function run() public {
        swap(data, 0, 1);   // data becomes [2, 1]
    }
}