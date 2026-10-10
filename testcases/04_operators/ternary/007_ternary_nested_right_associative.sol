// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: ?: is right-associative, so a ? x : b ? y : z means
// a ? x : (b ? y : z). The chain below is the usual "else if" ladder.
// EXPECTED: grade(95) == 4, grade(85) == 3, grade(75) == 2, grade(10) == 1;
// grade and gradeExplicit agree for every input.
contract TernaryNestedRightAssociative {
    function grade(uint256 score) public pure returns (uint256) {
        return score >= 90 ? 4 : score >= 80 ? 3 : score >= 70 ? 2 : 1;
    }

    function gradeExplicit(uint256 score) public pure returns (uint256) {
        return score >= 90 ? 4 : (score >= 80 ? 3 : (score >= 70 ? 2 : 1));
    }
}
