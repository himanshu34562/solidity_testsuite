// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: assignment operators have the lowest precedence, so the whole
// right-hand side is evaluated first. In particular x *= a + b means
// x = x * (a + b), not (x * a) + b.
// EXPECTED: mulAssign(2, 3, 4) == 14 (not 10), addAssignShift(10, 3) ==
// 16, plainAssign(1, 2, 3) == 7.
contract AssignmentLowestPrecedence {
    function mulAssign(uint256 x, uint256 a, uint256 b) public pure returns (uint256) {
        x *= a + b;
        return x;
    }

    function addAssignShift(uint256 x, uint256 a) public pure returns (uint256) {
        x += a << 1;
        return x;
    }

    function plainAssign(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        uint256 x;
        x = a + b * c;
        return x;
    }
}
