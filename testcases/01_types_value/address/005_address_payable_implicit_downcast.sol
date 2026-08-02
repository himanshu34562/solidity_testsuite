// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: address payable -> address IS allowed implicitly (payable
// is a superset of address's capabilities), the reverse is not.
// This tests the asymmetric implicit conversion rule.
contract AddressPayableImplicitDowncast {
    function toPlainAddress(address payable a) public pure returns (address) {
        address b = a; // implicit, always allowed
        return b;
    }
}