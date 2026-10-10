// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: shifting by 0 returns the operand unchanged, for both
// directions and both signednesses.
// EXPECTED: every function returns its first argument.
contract ShiftByZeroIsIdentity {
    function shl(uint256 a, uint256 n) public pure returns (uint256) {
        return a << n;
    }

    function shr(uint256 a, uint256 n) public pure returns (uint256) {
        return a >> n;
    }

    function shrSigned(int256 a, uint256 n) public pure returns (int256) {
        return a >> n;
    }
}