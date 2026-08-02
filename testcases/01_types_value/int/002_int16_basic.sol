// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Int16Basic {
    int16 public value = -32768; // min for int16

    function setValue(int16 v) public {
        value = v;
    }

    function getValue() public view returns (int16) {
        return value;
    }
}