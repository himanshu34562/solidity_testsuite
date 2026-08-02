// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm uninitialized address defaults to the zero address.
contract AddressDefaultValue {
    address public defaultAddr;

    function getDefault() public view returns (address) {
        return defaultAddr;
    }

    function isZero() public view returns (bool) {
        return defaultAddr == address(0);
    }
}