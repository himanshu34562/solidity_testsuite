// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: since solc 0.7.0, a literal shifted by a NON-literal amount
// is computed in uint256 (non-negative literal) or int256 (negative
// literal), not in the smallest type that fits the literal. So 1 << n
// does not overflow at 8 bits.
// EXPECTED: oneShl(255) == 2**255, minusOneShl(255) == type(int256).min.
contract LiteralShiftedByNonLiteralUsesUint256OrInt256 {
    function oneShl(uint256 n) public pure returns (uint256) {
        return 1 << n;
    }

    function minusOneShl(uint256 n) public pure returns (int256) {
        return -1 << n;
    }
}