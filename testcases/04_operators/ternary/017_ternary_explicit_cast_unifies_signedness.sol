// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the fix for branches whose types have no common type. Cast
// one branch (or both) so both have the same type. Contrast with 021 and
// 024, where the same shapes are rejected.
// EXPECTED: sign(true) == -1, sign(false) == 1, viaCast(false, 7) == 7.
contract TernaryExplicitCastUnifiesSignedness {
    function sign(bool c) public pure returns (int256) {
        return c ? int256(-1) : int256(1);
    }

    function viaCast(bool c, uint256 a) public pure returns (int256) {
        return c ? int256(-1) : int256(a);
    }
}
