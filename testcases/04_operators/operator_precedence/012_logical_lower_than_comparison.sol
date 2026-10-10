// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: comparisons bind tighter than && and ||, and && binds
// tighter than ||, so a < b && c < d || e == 0 means
// ((a < b) && (c < d)) || (e == 0).
// EXPECTED: with a=5, b=1, c=1, d=2, e=0: implicit == true (via the
// e == 0 branch).
contract LogicalLowerThanComparison {
    function implicit(uint256 a, uint256 b, uint256 c, uint256 d, uint256 e) public pure returns (bool) {
        return a < b && c < d || e == 0;
    }

    function explicit(uint256 a, uint256 b, uint256 c, uint256 d, uint256 e) public pure returns (bool) {
        return ((a < b) && (c < d)) || (e == 0);
    }
}
