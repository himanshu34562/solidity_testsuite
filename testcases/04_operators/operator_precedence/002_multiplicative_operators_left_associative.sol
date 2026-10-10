// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: *, / and % share one precedence level and group left to
// right, so a / b * c means (a / b) * c and a * b / c means (a * b) / c.
// Integer division truncates, so the grouping changes the result.
// EXPECTED: divThenMul(7, 2, 2) == 6 (not 1), mulThenDiv(7, 2, 2) == 7,
// divChain(100, 5, 2) == 10 (not 40), modThenMul(7, 4, 2) == 6.
contract MultiplicativeOperatorsLeftAssociative {
    function divThenMul(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a / b * c;
    }

    function mulThenDiv(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a * b / c;
    }

    function divChain(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a / b / c;
    }

    function modThenMul(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a % b * c;
    }
}
