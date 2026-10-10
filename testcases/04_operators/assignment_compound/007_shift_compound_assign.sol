// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the shift compound operators <<= and >>=. The shift amount
// is unsigned; >>= on a signed value is an arithmetic shift that keeps
// the sign. Shifting does not trigger overflow checks, so high bits are
// simply discarded.
// EXPECTED: shlAssign(1, 4) == 16, shrAssign(16, 4) == 1,
// shrAssignSigned(-16, 2) == -4.
contract ShiftCompoundAssign {
    function shlAssign(uint256 a, uint256 n) public pure returns (uint256) {
        a <<= n;
        return a;
    }

    function shrAssign(uint256 a, uint256 n) public pure returns (uint256) {
        a >>= n;
        return a;
    }

    function shrAssignSigned(int256 a, uint256 n) public pure returns (int256) {
        a >>= n;
        return a;
    }
}