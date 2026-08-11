// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: when literal elements individually fit different minimal
// widths, the array's inferred element type widens to the SMALLEST
// type that fits ALL elements together -- here 300 doesn't fit uint8,
// so the whole array infers as uint16[3], not a per-element mix.
contract ArrayLiteralMixedTypesCommonTypeWidening {
    function getWidenedArray() public pure returns (uint16[3] memory) {
        return [10, 20, 300]; // 300 forces uint16 for the whole literal, not just itself
    }
}