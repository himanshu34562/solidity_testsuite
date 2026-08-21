// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: distinct from unicode STRING literals -- this tests whether
// unicode characters are permitted in actual Solidity IDENTIFIERS
// (variable/function names). Solidity's grammar restricts identifiers
// to ASCII letters/digits/underscore, so this is expected to compile
// fine as long as identifiers stay ASCII while only literal CONTENT
// uses unicode.
// NOTE: an earlier version of this file mistakenly used a non-ASCII
// character (é) directly in the identifier itself (cafe_name), which
// is exactly the thing this file is supposed to demonstrate does NOT
// work -- fixed to use a genuinely ASCII identifier.
contract UnicodeIdentifierInCode {
    string public cafe_name = unicode"Café Solidity"; // ASCII identifier, unicode content
}