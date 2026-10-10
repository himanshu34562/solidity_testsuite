// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the ternary operator binds looser than ||, so
// a || b ? x : y means (a || b) ? x : y.
// EXPECTED: pick(false, true, 1, 2) == 1, pick(false, false, 1, 2) == 2.
contract TernaryLowerThanLogicalOr {
    function pick(bool a, bool b, uint256 x, uint256 y) public pure returns (uint256) {
        return a || b ? x : y;
    }

    function pickExplicit(bool a, bool b, uint256 x, uint256 y) public pure returns (uint256) {
        return (a || b) ? x : y;
    }
}
