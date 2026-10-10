// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: integer literal branches take the smallest unsigned type that
// holds each literal, and the result is the wider of the two. 1 and 2
// give uint8; 255 and 256 give uint16.
// EXPECTED: small(true) == 1, toU8(false) == 2, widened(false) == 256.
contract TernaryLiteralBranches {
    function small(bool c) public pure returns (uint256) {
        return c ? 1 : 2;
    }

    function toU8(bool c) public pure returns (uint8) {
        return c ? 1 : 2;
    }

    function widened(bool c) public pure returns (uint16) {
        return c ? 255 : 256;
    }
}
