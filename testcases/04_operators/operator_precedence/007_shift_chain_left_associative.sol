// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: shifts group left to right, so a << b >> c means
// (a << b) >> c, not a << (b >> c).
// EXPECTED: with a=1, b=4, c=2: implicit == 4, explicitLeftFirst == 4,
// explicitRightFirst == 2.
contract ShiftChainLeftAssociative {
    function implicit(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a << b >> c;
    }

    function explicitLeftFirst(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return (a << b) >> c;
    }

    function explicitRightFirst(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a << (b >> c);
    }
}
