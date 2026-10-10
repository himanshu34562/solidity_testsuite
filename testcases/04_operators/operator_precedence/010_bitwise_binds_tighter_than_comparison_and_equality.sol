// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unlike C, bitwise &, ^ and | bind TIGHTER than the relational
// and equality operators in Solidity. So x & mask == expected means
// (x & mask) == expected and compiles without extra parentheses. Under C
// grouping it would be x & (mask == expected), an integer & bool type
// error -- so the fact that this file compiles at all confirms the
// Solidity grouping.
// EXPECTED: maskEquals(0xF3, 0x0F, 0x03) == true, orLess(1, 2, 4) == true.
contract BitwiseBindsTighterThanComparisonAndEquality {
    function maskEquals(uint256 x, uint256 mask, uint256 expected) public pure returns (bool) {
        return x & mask == expected;
    }

    function maskEqualsExplicit(uint256 x, uint256 mask, uint256 expected) public pure returns (bool) {
        return (x & mask) == expected;
    }

    function orLess(uint256 a, uint256 b, uint256 c) public pure returns (bool) {
        return a | b < c;
    }

    function xorNotEqual(uint256 a, uint256 b, uint256 c) public pure returns (bool) {
        return a ^ b != c;
    }
}
