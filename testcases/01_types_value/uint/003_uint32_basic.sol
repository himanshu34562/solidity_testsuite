// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Uint32Basic {
    uint32 public value = 4294967295; // max for uint32

    function setValue(uint32 v) public {
        value = v;
    }

    function getValue() public view returns (uint32) {
        return value;
    }
}