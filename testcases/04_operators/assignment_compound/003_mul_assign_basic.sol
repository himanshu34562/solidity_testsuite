// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline *= on local variables.
// EXPECTED: mulAssign(4, 5) == 20, mulAssignSigned(-4, 5) == -20.
contract MulAssignBasic {
    function mulAssign(uint256 a, uint256 b) public pure returns (uint256) {
        a *= b;
        return a;
    }

    function mulAssignSigned(int256 a, int256 b) public pure returns (int256) {
        a *= b;
        return a;
    }
}