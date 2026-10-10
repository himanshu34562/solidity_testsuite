// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: fixed-size byte arrays support all six comparison operators;
// ordering compares the bytes as an unsigned big-endian value (the
// FIRST byte is the most significant).
// EXPECTED: lt(0x00000001, 0x01000000) == true.
contract BytesNEqualityAndOrdering {
    function eq(bytes4 a, bytes4 b) public pure returns (bool) {
        return a == b;
    }

    function ne(bytes4 a, bytes4 b) public pure returns (bool) {
        return a != b;
    }

    function lt(bytes4 a, bytes4 b) public pure returns (bool) {
        return a < b;
    }

    function ge(bytes32 a, bytes32 b) public pure returns (bool) {
        return a >= b;
    }
}
