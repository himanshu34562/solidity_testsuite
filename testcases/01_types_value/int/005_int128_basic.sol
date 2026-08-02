// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Int128Basic {
    int128 public value = -170141183460469231731687303715884105728; // min for int128

    function setValue(int128 v) public {
        value = v;
    }

    function getValue() public view returns (int128) {
        return value;
    }
}