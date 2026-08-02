// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: fixed bytesN supports read-only indexing to access individual
// bytes (b[0] is the leftmost/most-significant byte, due to right-padding
// this means index 0 is the "first" byte as written, unlike integers
// where the most significant byte isn't directly indexable at all).
contract BytesNIndexing {
    function getByteAt(bytes4 b, uint256 index) public pure returns (bytes1) {
        return b[index];
    }

    function getFirstByte(bytes4 b) public pure returns (bytes1) {
        return b[0];
    }
}