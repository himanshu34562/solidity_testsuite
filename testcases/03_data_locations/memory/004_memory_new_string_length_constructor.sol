// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: `new string(n)` -- CORRECTION: an earlier version of this
// file assumed this was invalid syntax (reasoning that zero bytes
// aren't meaningful UTF-8 content), but solc 0.8.20 accepts it. It
// allocates a string of length n filled with zero bytes, using the
// same underlying length-prefixed memory allocation mechanism as
// `new bytes(n)` -- solc does not validate UTF-8 well-formedness at
// allocation time, only at the point content is actually meant to be
// interpreted as text. The zero-filled result is presumably intended
// to be written into afterward, not used as-is.
contract MemoryNewStringLengthConstructor {
    function buildString(uint256 size) public pure returns (string memory) {
        string memory s = new string(size);
        return s; // length `size`, all zero bytes
    }

    function getLength(uint256 size) public pure returns (uint256) {
        string memory s = new string(size);
        return bytes(s).length; // should equal size
    }
}