// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm uninitialized int state variables default to 0
// (not to min/max), same storage-init codegen path as uint defaults.
contract IntDefaultValue {
    int8 public defaultI8;
    int256 public defaultI256;

    function getDefaults() public view returns (int8, int256) {
        return (defaultI8, defaultI256);
    }
}