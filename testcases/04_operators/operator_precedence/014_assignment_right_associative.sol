// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: assignment is right-associative, so a = b = c means
// a = (b = c). The inner assignment evaluates to the value assigned,
// which can be implicitly widened for the outer one.
// EXPECTED: chain(7) == (7, 7), chainWiden(200) == (200, 200),
// setBoth(9) leaves p == q == 9.
contract AssignmentRightAssociative {
    uint256 public p;
    uint256 public q;

    function chain(uint256 c) public pure returns (uint256, uint256) {
        uint256 a;
        uint256 b;
        a = b = c;
        return (a, b);
    }

    function chainWiden(uint8 c) public pure returns (uint16, uint8) {
        uint16 a;
        uint8 b;
        a = b = c;
        return (a, b);
    }

    function setBoth(uint256 v) public {
        p = q = v;
    }
}
