// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Uint128Basic {
    uint128 public value = 340282366920938463463374607431768211455; // max for uint128

    function setValue(uint128 v) public {
        value = v;
    }

    function getValue() public view returns (uint128) {
        return value;
    }
}