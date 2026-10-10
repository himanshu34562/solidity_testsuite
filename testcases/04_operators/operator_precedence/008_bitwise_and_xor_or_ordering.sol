// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the three bitwise operators have three distinct levels,
// from tightest to loosest: &, then ^, then |. So a | b ^ c & d means
// a | (b ^ (c & d)). Plain left-to-right grouping gives a different
// answer.
// EXPECTED: with a=1, b=2, c=3, d=1: implicit == 3, explicit == 3,
// leftToRight == 0.
contract BitwiseAndXorOrOrdering {
    function implicit(uint256 a, uint256 b, uint256 c, uint256 d) public pure returns (uint256) {
        return a | b ^ c & d;
    }

    function explicit(uint256 a, uint256 b, uint256 c, uint256 d) public pure returns (uint256) {
        return a | (b ^ (c & d));
    }

    function leftToRight(uint256 a, uint256 b, uint256 c, uint256 d) public pure returns (uint256) {
        return ((a | b) ^ c) & d;
    }
}
