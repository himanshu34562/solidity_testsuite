// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: storage reference parameters are allowed on `private`
// functions as well as `internal` ones -- neither crosses the ABI
// boundary.
contract StorageParamPrivateFunction {
    uint256[] public data;

    constructor() {
        data.push(1);
    }

    function bump(uint256[] storage arr) private {
        arr[0] += 1;
    }

    function run() public {
        bump(data);
    }
}