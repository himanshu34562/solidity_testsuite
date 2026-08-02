// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Int32Basic {
    int32 public value = -2147483648; // min for int32

    function setValue(int32 v) public {
        value = v;
    }

    function getValue() public view returns (int32) {
        return value;
    }
}