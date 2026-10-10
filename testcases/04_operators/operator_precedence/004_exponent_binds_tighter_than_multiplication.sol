// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: ** binds tighter than *, so a * b ** c means a * (b ** c).
// EXPECTED: with a=2, b=3, c=2: implicit == 18, explicitPowFirst == 18,
// explicitMulFirst == 36.
contract ExponentBindsTighterThanMultiplication {
    function implicit(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a * b ** c;
    }

    function explicitPowFirst(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a * (b ** c);
    }

    function explicitMulFirst(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return (a * b) ** c;
    }
}
