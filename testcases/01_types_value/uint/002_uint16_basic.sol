// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Uint16Basic {
    uint16 public value = 65535; // max for uint16

    function setValue(uint16 v) public {
        value = v;
    }

    function getValue() public view returns (uint16) {
        return value;
    }
}