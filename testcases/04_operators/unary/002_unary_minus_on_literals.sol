// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unary minus on literals. A negative literal is folded at
// compile time, so -128 is accepted for int8 (it fits exactly) even
// though +128 would not be.
// EXPECTED: negLiteral() == -5, minI8() == -128, doubleNegLiteral() == 5.
contract UnaryMinusOnLiterals {
    function negLiteral() public pure returns (int256) {
        return -5;
    }

    function minI8() public pure returns (int8) {
        return -128;
    }

    function doubleNegLiteral() public pure returns (int256) {
        int256 x = -(-5);
        return x;
    }
}
