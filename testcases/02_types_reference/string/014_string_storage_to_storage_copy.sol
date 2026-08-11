// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: direct storage-to-storage string assignment (copying one
// state variable's string content into another) -- this is a distinct
// codegen path from storage<->memory copies (001) since both sides
// are persistent storage, requiring a full byte-for-byte storage copy
// rather than a memory allocation.
contract StringStorageToStorageCopy {
    string public primary = "first";
    string public backup;

    function syncBackup() public {
        backup = primary; // storage -> storage copy
    }
}