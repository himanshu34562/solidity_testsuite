// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: logical identities that must hold for every input:
// !!a == a, and De Morgan's laws.
// EXPECTED: doubleNot(a) == a; deMorganAnd and deMorganOr return true
// for all inputs.
contract DoubleNegationAndDeMorgan {
    function doubleNot(bool a) public pure returns (bool) {
        return !!a;
    }

    function deMorganAnd(bool a, bool b) public pure returns (bool) {
        return !(a && b) == (!a || !b);
    }

    function deMorganOr(bool a, bool b) public pure returns (bool) {
        return !(a || b) == (!a && !b);
    }
}
