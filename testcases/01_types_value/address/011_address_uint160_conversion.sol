// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: address <-> uint160 requires explicit casts in both
// directions (address is NOT an integer type despite being 20 bytes /
// 160 bits under the hood). Tests the converter treats address as its
// own distinct LLVM type/representation, not silently aliased to i160.
contract AddressUint160Conversion {
    function addressToUint(address a) public pure returns (uint160) {
        return uint160(a);
    }

    function uintToAddress(uint160 u) public pure returns (address) {
        return address(u);
    }
}