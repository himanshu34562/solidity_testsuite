// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm uninitialized string state variable defaults to an
// empty string -- same zero-initialization guarantee as every other
// storage-backed type, here representing a zero-length dynamic array
// of bytes under the hood.
contract StringDefaultValue {
    string public defaultName;

    function isEmpty() public view returns (bool) {
        return bytes(defaultName).length == 0;
    }
}