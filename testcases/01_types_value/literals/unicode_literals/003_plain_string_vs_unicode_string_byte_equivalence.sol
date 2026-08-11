// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a plain string literal containing only ASCII and a
// unicode"..." literal with the SAME ASCII content should produce
// byte-identical output -- the unicode prefix only matters for
// non-ASCII/validation purposes, not for changing ASCII encoding.
contract PlainStringVsUnicodeStringByteEquivalence {
    string public plainAscii = "hello";
    string public unicodeAscii = unicode"hello";

    function areEqual() public pure returns (bool) {
        return keccak256(bytes("hello")) == keccak256(bytes(unicode"hello"));
    }
}