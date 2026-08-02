// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: address(this) -- the contract's own address, commonly used
// for balance checks and self-reference. Tests that the converter
// correctly resolves the current execution context's address (ADDRESS
// opcode) rather than treating `this` as a generic contract instance
// requiring some other lowering.
contract AddressThis {
    function getSelfAddress() public view returns (address) {
        return address(this);
    }
}