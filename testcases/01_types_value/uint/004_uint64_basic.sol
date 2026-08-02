// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Uint64Basic {
    uint64 public value = 18446744073709551615; // max for uint64

    function setValue(uint64 v) public {
        value = v;
    }

    function getValue() public view returns (uint64) {
        return value;
    }
}