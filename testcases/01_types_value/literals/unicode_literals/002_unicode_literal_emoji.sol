// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: multi-byte UTF-8 sequences (emoji, 4-byte codepoints) --
// tests that the converter correctly preserves the raw UTF-8 byte
// encoding rather than attempting any codepoint-level transformation.
contract UnicodeLiteralEmoji {
    string public rocket = unicode"🚀";
    string public wave = unicode"👋🌍";
}