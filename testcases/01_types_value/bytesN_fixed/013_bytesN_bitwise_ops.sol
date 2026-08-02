// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: fixed bytesN supports bitwise operators (&, |, ^, ~) same as
// integers -- tests that these apply correctly across the full declared
// width including the right-padded zero bytes.
contract BytesNBitwiseOps {
    function and(bytes4 a, bytes4 b) public pure returns (bytes4) {
        return a & b;
    }

    function or(bytes4 a, bytes4 b) public pure returns (bytes4) {
        return a | b;
    }

    function xor(bytes4 a, bytes4 b) public pure returns (bytes4) {
        return a ^ b;
    }

    function not(bytes4 a) public pure returns (bytes4) {
        return ~a;
    }
}