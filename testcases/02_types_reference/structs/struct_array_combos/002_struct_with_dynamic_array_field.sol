// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a struct containing a DYNAMIC array field -- unlike the
// fixed-array case, this field's storage footprint is unbounded and
// runtime-determined, requiring the array's own separate
// keccak256-derived storage region (same general mechanism as a
// mapping field, but arrays CAN still be copied/enumerated, unlike
// mappings -- so this does NOT make the containing struct storage-only).
contract StructWithDynamicArrayField {
    struct Playlist {
        string name;
        uint256[] trackIds;
    }

    Playlist public playlist;

    function setup(string memory name) public {
        playlist.name = name;
    }

    function addTrack(uint256 trackId) public {
        playlist.trackIds.push(trackId);
    }

    function getTrackCount() public view returns (uint256) {
        return playlist.trackIds.length;
    }
}