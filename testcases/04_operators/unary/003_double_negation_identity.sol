// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negating twice returns the original value, written with
// parentheses and with a space between the minus signs. (Without the
// space, -- would be the decrement operator.)
// EXPECTED: both functions return x for every x except type(int256).min,
// where the first negation reverts with Panic(0x11).
contract DoubleNegationIdentity {
    function withParens(int256 x) public pure returns (int256) {
        return -(-x);
    }

    function withSpace(int256 x) public pure returns (int256) {
        return - -x;
    }
}
