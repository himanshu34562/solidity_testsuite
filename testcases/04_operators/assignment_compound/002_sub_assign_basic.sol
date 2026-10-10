// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline -= on local variables. Signed results may be
// negative; unsigned underflow is covered separately in 013.
// EXPECTED: subAssign(5, 3) == 2, subAssignSigned(3, 5) == -2.
contract SubAssignBasic {
    function subAssign(uint256 a, uint256 b) public pure returns (uint256) {
        a -= b;
        return a;
    }

    function subAssignSigned(int256 a, int256 b) public pure returns (int256) {
        a -= b;
        return a;
    }
}