// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: address payable is a distinct type from plain address —
// only address payable exposes .transfer() and .send(). Tests that
// the converter tracks this type distinction rather than treating
// both as identical 20-byte values with no semantic difference.
contract AddressPayableBasic {
    address payable public value;

    function setValue(address payable v) public {
        value = v;
    }

    function getValue() public view returns (address payable) {
        return value;
    }
}