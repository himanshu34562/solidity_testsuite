// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: since solc 0.8.0 the ** operator is RIGHT-associative, so
// a ** b ** c means a ** (b ** c), not (a ** b) ** c.
// EXPECTED: with a=2, b=3, c=2: rightAssoc == 512 (2 ** 9),
// leftAssoc == 64 ((2 ** 3) ** 2).
contract ExponentiationRightAssociative {
    function rightAssoc(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a ** b ** c;
    }

    function leftAssoc(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return (a ** b) ** c;
    }
}