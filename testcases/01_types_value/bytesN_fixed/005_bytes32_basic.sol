// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Bytes32Basic {
    bytes32 public value = 0x0102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F20;

    function setValue(bytes32 v) public {
        value = v;
    }

    function getValue() public view returns (bytes32) {
        return value;
    }
}