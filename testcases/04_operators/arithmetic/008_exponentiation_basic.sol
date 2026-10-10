// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline exponentiation. The result type always equals the
// type of the BASE; the exponent must be unsigned. A signed base with
// an unsigned exponent is allowed.
// EXPECTED: powUnsigned(2, 10) == 1024, powSigned(-2, 3) == -8.
contract ExponentiationBasic {
    function powUnsigned(uint256 base, uint256 exp) public pure returns (uint256) {
        return base ** exp;
    }

    function powSigned(int256 base, uint256 exp) public pure returns (int256) {
        return base ** exp;
    }
}