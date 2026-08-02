// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm uninitialized bool state variable defaults to false.
contract BoolDefaultValue {
    bool public defaultBool;

    function getDefault() public view returns (bool) {
        return defaultBool;
    }
}