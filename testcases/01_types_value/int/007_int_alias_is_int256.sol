// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm `int` is a strict alias for `int256` at the IR level.
contract IntAliasIsInt256 {
    int public value = -57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function setValue(int v) public {
        value = v;
    }

    function getValue() public view returns (int) {
        return value;
    }
}