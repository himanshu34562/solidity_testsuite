// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: << and >> bind LOOSER than + and -, so a << b + c means
// a << (b + c), not (a << b) + c.
// EXPECTED: with a=1, b=1, c=2: implicit == 8, explicitSumFirst == 8,
// explicitShiftFirst == 4.
contract ShiftLowerThanAdditive {
    function implicit(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a << b + c;
    }

    function explicitSumFirst(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return a << (b + c);
    }

    function explicitShiftFirst(uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return (a << b) + c;
    }
}
