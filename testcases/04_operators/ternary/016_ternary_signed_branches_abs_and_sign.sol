// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: classic signed idioms built on ?:. abs() negates only when
// negative; in checked mode abs(type(int256).min) reverts with
// Panic(0x11) because the negation overflows. sign() uses explicit
// casts so every branch has the same type (see 024).
// EXPECTED: abs(-5) == 5, abs(5) == 5, sign(-9) == -1, sign(0) == 0,
// sign(9) == 1.
contract TernarySignedBranchesAbsAndSign {
    function abs(int256 x) public pure returns (int256) {
        return x < 0 ? -x : x;
    }

    function sign(int256 x) public pure returns (int256) {
        return x > 0 ? int256(1) : x < 0 ? int256(-1) : int256(0);
    }
}
