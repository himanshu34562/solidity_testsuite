// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: signed >> rounds toward NEGATIVE INFINITY, while signed
// division by 2 truncates toward ZERO. For odd negative numbers the two
// differ.
// EXPECTED: shiftHalf(-7) == -4, divideHalf(-7) == -3.
contract ShrSignedRoundsTowardNegativeInfinity {
    function shiftHalf(int256 a) public pure returns (int256) {
        return a >> 1;
    }

    function divideHalf(int256 a) public pure returns (int256) {
        return a / 2;
    }
}