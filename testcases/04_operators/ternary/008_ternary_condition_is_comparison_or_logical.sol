// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the condition can be any bool expression. Comparisons and
// logical operators bind tighter than ?:, so a > b && c ? a : b means
// ((a > b) && c) ? a : b.
// EXPECTED: maxIf(5, 3, true) == 5, maxIf(5, 3, false) == 3,
// zeroOrOne(0, 7) == 1.
contract TernaryConditionIsComparisonOrLogical {
    function maxIf(uint256 a, uint256 b, bool c) public pure returns (uint256) {
        return a > b && c ? a : b;
    }

    function zeroOrOne(uint256 a, uint256 b) public pure returns (uint256) {
        return a == b || a == 0 ? 1 : 0;
    }
}
