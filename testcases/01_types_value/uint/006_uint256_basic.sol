// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Uint256Basic {
    // uint256 max: 2^256 - 1
    uint256 public value = 115792089237316195423570985008687907853269984665640564039457584007913129639935;

    function setValue(uint256 v) public {
        value = v;
    }

    function getValue() public view returns (uint256) {
        return value;
    }
}