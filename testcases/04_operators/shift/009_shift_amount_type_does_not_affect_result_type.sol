// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the shift amount may be ANY unsigned integer type, narrower
// or wider than the left operand, and the result type always follows the
// LEFT operand only (unlike arithmetic, where the wider type wins).
// EXPECTED: shlU8ByU256(1, 3) == 8 (uint8), shlU256ByU8(1, 3) == 8 (uint256).
contract ShiftAmountTypeDoesNotAffectResultType {
    function shlU8ByU256(uint8 a, uint256 n) public pure returns (uint8) {
        return a << n;
    }

    function shlU256ByU8(uint256 a, uint8 n) public pure returns (uint256) {
        return a << n;
    }
}