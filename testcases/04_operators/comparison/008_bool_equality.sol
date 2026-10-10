// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: bool supports == and != only (no relational operators; see
// 016). a != b acts as logical XOR on booleans.
// EXPECTED: eq(true, true) == true, xor(true, false) == true,
// xor(true, true) == false.
contract BoolEquality {
    function eq(bool a, bool b) public pure returns (bool) {
        return a == b;
    }

    function xor(bool a, bool b) public pure returns (bool) {
        return a != b;
    }
}
