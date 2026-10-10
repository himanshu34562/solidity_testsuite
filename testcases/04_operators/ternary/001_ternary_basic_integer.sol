// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline conditional expression on unsigned and signed
// integers of different widths.
// EXPECTED: pick(true, 1, 2) == 1, pick(false, 1, 2) == 2.
contract TernaryBasicInteger {
    function pick(bool c, uint256 a, uint256 b) public pure returns (uint256) {
        return c ? a : b;
    }

    function pickU8(bool c, uint8 a, uint8 b) public pure returns (uint8) {
        return c ? a : b;
    }

    function pickSigned(bool c, int256 a, int256 b) public pure returns (int256) {
        return c ? a : b;
    }
}
