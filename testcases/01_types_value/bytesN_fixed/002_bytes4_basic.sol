// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: bytes4 is the size used for function selectors -- common
// enough in real contracts to deserve its own dedicated width test.
contract Bytes4Basic {
    bytes4 public value = 0xAABBCCDD;

    function setValue(bytes4 v) public {
        value = v;
    }

    function getValue() public view returns (bytes4) {
        return value;
    }
}