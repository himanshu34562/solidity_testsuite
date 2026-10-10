// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a comparison yields a bool, which can be stored, used as a
// branch condition, compared again with ==, and combined with logical
// operators.
// EXPECTED: sameOrdering(1, 2, 3, 4) == true, orEqual(2, 2) == true.
contract ResultIsBoolAndComposable {
    function stored(uint256 a, uint256 b) public pure returns (bool) {
        bool r = a < b;
        return r;
    }

    function branch(uint256 a, uint256 b) public pure returns (uint256) {
        if (a < b) {
            return 1;
        }
        return 0;
    }

    function sameOrdering(uint256 a, uint256 b, uint256 c, uint256 d) public pure returns (bool) {
        return (a < b) == (c < d);
    }

    function orEqual(uint256 a, uint256 b) public pure returns (bool) {
        return a < b || a == b;   // equivalent to a <= b
    }
}
