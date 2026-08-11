// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BytesDefaultValue {
    bytes public defaultData;

    function isEmpty() public view returns (bool) {
        return defaultData.length == 0; // direct .length works, unlike string
    }
}