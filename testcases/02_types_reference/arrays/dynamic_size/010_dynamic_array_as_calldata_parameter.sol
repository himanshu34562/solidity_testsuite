// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: calldata dynamic array parameter -- external-only, avoids
// a memory copy for read-only access, same distinction established
// for bytes/string calldata parameters.
contract DynamicArrayAsCalldataParameter {
    function sumArray(uint256[] calldata arr) external pure returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < arr.length; i++) {
            total += arr[i];
        }
        return total;
    }
}