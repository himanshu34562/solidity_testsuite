// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: in Solidity unary minus binds TIGHTER than **, the opposite
// of ordinary mathematical convention. -a ** b means (-a) ** b, not
// -(a ** b). A converter that parses it the mathematical way would get
// the sign wrong for even exponents.
// EXPECTED: with a=2, b=2: implicit == 4, explicitNegFirst == 4,
// explicitPowFirst == -4.
contract UnaryMinusBindsTighterThanExponent {
    function implicit(int256 a, uint256 b) public pure returns (int256) {
        return -a ** b;
    }

    function explicitNegFirst(int256 a, uint256 b) public pure returns (int256) {
        return (-a) ** b;
    }

    function explicitPowFirst(int256 a, uint256 b) public pure returns (int256) {
        return -(a ** b);
    }
}
