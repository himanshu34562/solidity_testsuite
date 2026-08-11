// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract HexStringLiteralEmpty {
    bytes public value = hex"";

    function isEmpty() public view returns (bool) {
        return value.length == 0;
    }
}