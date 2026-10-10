// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: when two operands have different widths (same signedness),
// the narrower one is implicitly widened and the operation is
// performed in the WIDER type. So uint8 + uint16 is computed as
// uint16, and the overflow boundary is uint16's, not uint8's.
// EXPECTED: add(255, 1) == 256 with no revert, since the sum is
// computed in uint16.
contract MixedWidthResultIsWiderType {
    function add(uint8 a, uint16 b) public pure returns (uint16) {
        return a + b;
    }
}