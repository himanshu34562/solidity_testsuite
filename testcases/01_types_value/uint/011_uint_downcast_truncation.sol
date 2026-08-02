// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: explicit downcast (uint256 -> uint8) truncates via masking,
// no overflow check involved (explicit casts never revert on truncation).
// EXPECTED: truncate(256) returns 0, since 256 mod 256 = 0 in uint8 range.
contract UintDowncastTruncation {
    function truncate(uint256 x) public pure returns (uint8) {
        return uint8(x);
    }
}