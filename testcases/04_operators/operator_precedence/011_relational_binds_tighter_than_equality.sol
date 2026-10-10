// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: <, <=, > and >= bind tighter than == and !=, so
// a < b == c < d means (a < b) == (c < d): "both comparisons agree".
// EXPECTED: sameOrdering(1, 2, 3, 4) == true, sameOrdering(1, 2, 4, 3) ==
// false.
contract RelationalBindsTighterThanEquality {
    function sameOrdering(uint256 a, uint256 b, uint256 c, uint256 d) public pure returns (bool) {
        return a < b == c < d;
    }

    function sameOrderingExplicit(uint256 a, uint256 b, uint256 c, uint256 d) public pure returns (bool) {
        return (a < b) == (c < d);
    }
}
