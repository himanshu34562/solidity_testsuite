// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the right-hand side of a compound assignment may be a
// NARROWER type than the target; it is implicitly widened (same rule
// as plain arithmetic). The reverse direction is rejected -- see 016.
// EXPECTED: widen(255, 1) == 256, since the target is uint16.
contract CompoundAssignRhsNarrowerWidens {
    function widen(uint16 a, uint8 b) public pure returns (uint16) {
        a += b;
        return a;
    }

    function widenBitwise(uint16 a, uint8 b) public pure returns (uint16) {
        a |= b;
        return a;
    }
}