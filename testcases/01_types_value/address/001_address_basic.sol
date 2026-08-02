// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AddressBasic {
    address public value = 0x1234567890123456789012345678901234567890;

    function setValue(address v) public {
        value = v;
    }

    function getValue() public view returns (address) {
        return value;
    }
}