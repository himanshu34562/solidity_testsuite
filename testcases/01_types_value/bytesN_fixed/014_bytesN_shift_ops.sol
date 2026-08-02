// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: fixed bytesN supports shift operators too. Shifting is
// purely bitwise (no sign extension concerns, unlike int types),
// but the shift direction interacts with the right-padding layout,
// worth confirming the converter shifts in the correct direction
// relative to how bytes are stored.
contract BytesNShiftOps {
    function shiftLeft(bytes4 b, uint256 n) public pure returns (bytes4) {
        return b << n;
    }

    function shiftRight(bytes4 b, uint256 n) public pure returns (bytes4) {
        return b >> n;
    }
}