// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unary negation of type(intN).min overflows, since the
// positive equivalent doesn't fit (same root cause as file 015).
// EXPECTED: negate() reverts when x == type(int8).min (-128), since
// -(-128) = 128 doesn't fit in int8 (max 127).
contract IntNegationOverflow {
    function negate(int8 x) public pure returns (int8) {
        return -x;
    }
}