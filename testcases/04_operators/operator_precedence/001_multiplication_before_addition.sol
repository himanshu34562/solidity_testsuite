// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: * binds tighter than +, so a + b * c means a + (b * c).
// EXPECTED: with a=2, b=3, c=4: implicit == 14, explicitMulFirst == 14,
// explicitAddFirst == 20.
contract MultiplicationBeforeAddition {
    function implicit(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a + b * c;
    }

    function explicitMulFirst(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a + (b * c);
    }

    function explicitAddFirst(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return (a + b) * c;
    }
}
