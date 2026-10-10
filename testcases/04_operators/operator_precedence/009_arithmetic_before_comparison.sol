// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: arithmetic binds tighter than relational and equality
// operators, so a + b < c * d compares the two computed values.
// EXPECTED: with a=1, b=2, c=2, d=2: lessSums == true (3 < 4),
// equalDiff(5, 2, 3) == true.
contract ArithmeticBeforeComparison {
    function lessSums(uint256 a, uint256 b, uint256 c, uint256 d) public pure returns (bool) {
        return a + b < c * d;
    }

    function lessSumsExplicit(uint256 a, uint256 b, uint256 c, uint256 d) public pure returns (bool) {
        return (a + b) < (c * d);
    }

    function equalDiff(uint256 a, uint256 b, uint256 c) public pure returns (bool) {
        return a - b == c;
    }
}
