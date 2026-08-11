// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: bytes <-> string explicit conversion -- mirrors string/007's
// roundtrip test from the other direction, confirming the conversion
// is symmetric and reversible.
contract BytesStringConversion {
    function toStringAndBack(bytes memory b) public pure returns (bytes memory) {
        string memory s = string(b);
        return bytes(s);
    }
}