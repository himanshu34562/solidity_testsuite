// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a fixed-size storage array can also be passed as a
// `storage` parameter; the callee writes through to the state variable.
contract StorageFixedArrayParam {
    uint256[3] public data;

    function setAll(uint256[3] storage arr, uint256 v) internal {
        arr[0] = v;
        arr[1] = v;
        arr[2] = v;
    }

    function run() public {
        setAll(data, 9);
    }
}