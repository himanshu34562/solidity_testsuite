// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: string as a calldata parameter -- only legal for external
// functions. calldata is read-only and avoids a memory copy, so this
// is the more gas-efficient choice when the function doesn't need to
// mutate the string locally.
contract StringCalldataParameter {
    function echoExternal(string calldata s) external pure returns (string memory) {
        return s; // calldata -> memory copy happens on return
    }
}