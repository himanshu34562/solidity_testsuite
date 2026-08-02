// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Int256Basic {
    // int256 min: -2^255
    int256 public value = -57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function setValue(int256 v) public {
        value = v;
    }

    function getValue() public view returns (int256) {
        return value;
    }
}