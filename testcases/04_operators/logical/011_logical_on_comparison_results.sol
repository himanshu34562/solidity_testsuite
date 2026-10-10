// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: comparisons yield bool, so their results combine directly
// with &&, || and !.
// EXPECTED: bothHold(1, 2, 3, 4) == true, eitherHolds(2, 1, 3, 3) == false.
contract LogicalOnComparisonResults {
    function bothHold(uint256 a, uint256 b, uint256 c, uint256 d) public pure returns (bool) {
        return (a < b) && (c != d);
    }

    function eitherHolds(uint256 a, uint256 b, uint256 c, uint256 d) public pure returns (bool) {
        return (a < b) || (c > d);
    }

    function notInRange(uint256 x) public pure returns (bool) {
        return !(x >= 10 && x <= 20);
    }
}
