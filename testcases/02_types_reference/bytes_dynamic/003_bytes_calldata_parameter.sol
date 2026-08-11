// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: calldata bytes parameter -- only legal on external functions,
// avoids a memory copy for read-only access, same distinction as
// string's calldata form covered in string/003.
contract BytesCalldataParameter {
    function echoExternal(bytes calldata b) external pure returns (bytes memory) {
        return b;
    }
}