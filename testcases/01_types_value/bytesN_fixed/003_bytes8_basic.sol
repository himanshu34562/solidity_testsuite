// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Bytes8Basic {
    bytes8 public value = 0x0102030405060708;

    function setValue(bytes8 v) public {
        value = v;
    }

    function getValue() public view returns (bytes8) {
        return value;
    }
}