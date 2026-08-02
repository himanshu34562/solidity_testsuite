// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: implicit upcast (int8 -> int256) must SIGN-extend, not
// zero-extend like uint does. This is the key IR-level difference vs
// the uint upcast case (012 in uint/) — codegen should use sign bits,
// not zero-fill, when widening a negative value.
contract IntUpcastSignExtension {
    function widen(int8 x) public pure returns (int256) {
        int256 y = x; // implicit widening, must preserve sign
        return y;
    }
}