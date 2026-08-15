// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: CONTRAST with struct_with_mapping's storage-only restriction
// -- a struct containing a dynamic array CAN be copied to/from memory
// and returned from functions, since array contents (unlike mapping
// contents) are enumerable and thus copyable. This confirms the
// storage-only restriction is specific to mappings, not to "any field
// with unbounded/runtime size" in general.
contract StructWithDynamicArrayMemoryCopyAllowed {
    struct Playlist {
        string name;
        uint256[] trackIds;
    }

    Playlist public playlist;

    function getPlaylist() public view returns (Playlist memory) {
        return playlist; // legal: full storage -> memory copy, including the dynamic array field
    }
}