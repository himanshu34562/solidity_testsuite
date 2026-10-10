// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: one expression using six precedence levels at once:
// **, *, +, <<, & and |. Parsing is
// (((a + (b * (c ** 2))) << 1) & m) | n.
// EXPECTED: implicit and explicit return the same value for every input
// (e.g. a=1, b=2, c=3, m=0xFF, n=0x100 gives 0x138).
contract FullArithmeticAndBitwiseChain {
    function implicit(uint256 a, uint256 b, uint256 c, uint256 m, uint256 n) public pure returns (uint256) {
        return a + b * c ** 2 << 1 & m | n;
    }

    function explicit(uint256 a, uint256 b, uint256 c, uint256 m, uint256 n) public pure returns (uint256) {
        return (((a + (b * (c ** 2))) << 1) & m) | n;
    }
}
