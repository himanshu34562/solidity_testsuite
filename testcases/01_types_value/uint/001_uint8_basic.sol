// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Uint8Basic {
    uint8 public value = 255; // max for uint8

    function setValue(uint8 v) public {
        value = v;
    }

    function getValue() public view returns (uint8) {
        return value;
    }
}