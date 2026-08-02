// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Int8Basic {
    int8 public value = -128; // min for int8

    function setValue(int8 v) public {
        value = v;
    }

    function getValue() public view returns (int8) {
        return value;
    }
}