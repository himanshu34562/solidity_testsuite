// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm uninitialized fixed bytesN defaults to all-zero bytes
// of that width (same storage-init pattern as other value types).
contract BytesNDefaultValue {
    bytes1 public defaultB1;
    bytes32 public defaultB32;

    function getDefaults() public view returns (bytes1, bytes32) {
        return (defaultB1, defaultB32);
    }
}