// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: exercise && and || directly (Solidity has no native ^ for bool,
// so bool XOR is expressed as != , included here for completeness).
contract BoolLogicalOps {
    function and(bool a, bool b) public pure returns (bool) {
        return a && b;
    }

    function or(bool a, bool b) public pure returns (bool) {
        return a || b;
    }

    function xorEquivalent(bool a, bool b) public pure returns (bool) {
        return a != b;
    }

    function equal(bool a, bool b) public pure returns (bool) {
        return a == b;
    }
}