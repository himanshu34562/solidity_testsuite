// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Bytes16Basic {
    bytes16 public value = 0x0102030405060708090A0B0C0D0E0F10;

    function setValue(bytes16 v) public {
        value = v;
    }

    function getValue() public view returns (bytes16) {
        return value;
    }
}