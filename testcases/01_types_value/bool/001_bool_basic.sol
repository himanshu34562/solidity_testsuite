// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BoolBasic {
    bool public value = true;

    function setValue(bool v) public {
        value = v;
    }

    function getValue() public view returns (bool) {
        return value;
    }
}