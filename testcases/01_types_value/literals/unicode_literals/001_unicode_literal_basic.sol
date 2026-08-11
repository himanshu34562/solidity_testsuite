// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unicode"..." literal syntax (0.7.0+) -- explicitly declares
// the literal's content as UTF-8-validated unicode text, as opposed to
// a plain string literal which permits arbitrary bytes. Tests that the
// converter accepts this distinct literal prefix and treats it as a
// (validated) string/bytes value identically to a plain string literal
// once compiled.
contract UnicodeLiteralBasic {
    string public value = unicode"Hello, 世界! 🎉";

    function getUnicodeGreeting() public pure returns (string memory) {
        return unicode"café";
    }
}