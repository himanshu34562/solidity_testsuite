// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: + and - share one precedence level and group left to right,
// so a - b - c means (a - b) - c and a - b + c means (a - b) + c.
// EXPECTED: subChain(10, 3, 2) == 5 (not 9), subThenAdd(10, 3, 2) == 9
// (not 5), subThenAdd(1, 3, 5) reverts with Panic(0x11) at the first
// subtraction even though the final result would be positive.
contract AdditiveOperatorsLeftAssociative {
    function subChain(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a - b - c;
    }

    function subThenAdd(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a - b + c;
    }
}
