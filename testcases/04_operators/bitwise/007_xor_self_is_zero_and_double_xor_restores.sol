// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: two classic XOR identities: x ^ x == 0, and (x ^ k) ^ k == x.
// EXPECTED: selfXor(anything) == 0, roundTrip(x, k) == x.
contract XorSelfIsZeroAndDoubleXorRestores {
    function selfXor(uint256 x) public pure returns (uint256) {
        return x ^ x;
    }

    function roundTrip(uint256 x, uint256 k) public pure returns (uint256) {
        return (x ^ k) ^ k;
    }
}