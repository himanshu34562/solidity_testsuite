// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: for signed modulo, the result takes the sign of the
// DIVIDEND (left operand), consistent with truncating division.
// Together with 005 this gives (a / b) * b + (a % b) == a.
// EXPECTED: mod(-7, 3) == -1, mod(7, -3) == 1, mod(-7, -3) == -1.
contract ModuloSignedSignFollowsDividend {
    function mod(int256 a, int256 b) public pure returns (int256) {
        return a % b;
    }
}