// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: `new bytes(n)` allocates a zero-filled memory byte array of
// a given length -- confirms the `new` allocation mechanism extends to
// bytes, not just typed arrays. NOTE: `new string(n)` does NOT exist
// (string has no length-based constructor since string content isn't
// meaningfully "n zero bytes") -- only bytes supports this form.
contract MemoryNewExpressionBytesAndString {
    function buildBytes(uint256 size) public pure returns (bytes memory) {
        bytes memory b = new bytes(size);
        return b; // all zero-filled, length `size`
    }
}