// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Int64Basic {
    int64 public value = -9223372036854775808; // min for int64

    function setValue(int64 v) public {
        value = v;
    }

    function getValue() public view returns (int64) {
        return value;
    }
}