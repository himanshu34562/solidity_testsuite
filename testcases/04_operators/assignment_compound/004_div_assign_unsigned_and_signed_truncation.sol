// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: /= follows the same truncation rules as plain division:
// unsigned discards the remainder, signed truncates toward zero.
// EXPECTED: divAssign(7, 2) == 3, divAssignSigned(-7, 2) == -3.
contract DivAssignUnsignedAndSignedTruncation {
    function divAssign(uint256 a, uint256 b) public pure returns (uint256) {
        a /= b;
        return a;
    }

    function divAssignSigned(int256 a, int256 b) public pure returns (int256) {
        a /= b;
        return a;
    }
}