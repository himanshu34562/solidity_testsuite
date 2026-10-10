// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: %= follows the same rules as plain modulo; for signed
// operands the result takes the sign of the dividend.
// EXPECTED: modAssign(7, 3) == 1, modAssignSigned(-7, 3) == -1.
contract ModAssignBasic {
    function modAssign(uint256 a, uint256 b) public pure returns (uint256) {
        a %= b;
        return a;
    }

    function modAssignSigned(int256 a, int256 b) public pure returns (int256) {
        a %= b;
        return a;
    }
}