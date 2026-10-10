// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unary minus directly after a binary operator. a - -b is
// a + b, a + -b is a - b, and a * -b is -(a * b). The space between the
// operators matters, since a--b would try to read -- as a decrement.
// EXPECTED: subNeg(5, 3) == 8, addNeg(5, 3) == 2, mulNeg(5, 3) == -15.
contract UnaryMinusAfterBinaryOperator {
    function subNeg(int256 a, int256 b) public pure returns (int256) {
        return a - -b;
    }

    function addNeg(int256 a, int256 b) public pure returns (int256) {
        return a + -b;
    }

    function mulNeg(int256 a, int256 b) public pure returns (int256) {
        return a * -b;
    }
}
