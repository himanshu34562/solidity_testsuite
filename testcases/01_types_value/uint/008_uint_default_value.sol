// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm uninitialized uint state variables default to 0
// and that this is reflected correctly in storage initialization codegen.
contract UintDefaultValue {
    uint8 public defaultU8;
    uint256 public defaultU256;

    function getDefaults() public view returns (uint8, uint256) {
        return (defaultU8, defaultU256);
    }
}