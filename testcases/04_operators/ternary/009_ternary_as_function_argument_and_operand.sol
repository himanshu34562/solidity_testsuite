// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a conditional expression is an ordinary expression: it can
// be a function argument or an operand of another operator (wrapped in
// parentheses because of its low precedence).
// EXPECTED: asArgument(true, 3, 4) == 6, inExpression(false, 10) == 10,
// inExpression(true, 10) == 11.
contract TernaryAsFunctionArgumentAndOperand {
    function double(uint256 x) internal pure returns (uint256) {
        return x * 2;
    }

    function asArgument(bool c, uint256 a, uint256 b) public pure returns (uint256) {
        return double(c ? a : b);
    }

    function inExpression(bool c, uint256 x) public pure returns (uint256) {
        return x + (c ? 1 : 0);
    }
}
