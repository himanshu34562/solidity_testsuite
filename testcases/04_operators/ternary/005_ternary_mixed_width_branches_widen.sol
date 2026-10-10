// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: when the branches have different integer widths (same
// signedness), the result type is the wider of the two; the narrower
// branch is implicitly widened.
// EXPECTED: pick(true, 255, 1000) == 255 as uint16,
// pickSigned(false, -5, -1000) == -1000 as int16.
contract TernaryMixedWidthBranchesWiden {
    function pick(bool c, uint8 a, uint16 b) public pure returns (uint16) {
        return c ? a : b;
    }

    function pickSigned(bool c, int8 a, int16 b) public pure returns (int16) {
        return c ? a : b;
    }
}
