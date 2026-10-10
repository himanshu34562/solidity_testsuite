// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a literal shifted by a literal is folded at compile time into
// an arbitrary-precision rational/integer constant, which then converts
// to the target type as long as the VALUE fits. 1 << 255 fits uint256;
// -1 << 255 fits int256 exactly (== type(int256).min).
contract LiteralShiftConstantFoldingInRange {
    uint256 public constant EIGHT = 1 << 3;
    uint256 public constant HIGH_BIT = 1 << 255;
    int256 public constant MIN = -1 << 255;

    function folded() public pure returns (uint256) {
        return 0xFF << 4;   // 0xFF0
    }
}