// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm uninitialized string state variable defaults to an
// empty string (zero-length), same underlying representation as
// 002_string_literal_empty.sol's explicit empty string.
contract StringDefaultValue {
    string public defaultString;

    function getDefault() public view returns (string memory) {
        return defaultString;
    }

    function isEmpty() public view returns (bool) {
        return bytes(defaultString).length == 0;
    }
}