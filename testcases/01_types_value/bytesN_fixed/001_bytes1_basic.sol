// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Bytes1Basic {
    bytes1 public value = 0xAB;

    function setValue(bytes1 v) public {
        value = v;
    }

    function getValue() public view returns (bytes1) {
        return value;
    }
}