// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: distinct from unicode STRING literals -- this tests whether
// unicode characters are permitted in actual Solidity IDENTIFIERS
// (variable/function names). Solidity's grammar restricts identifiers
// to ASCII letters/digits/underscore, so this is expected to compile
// fine as long as identifiers stay ASCII while only literal CONTENT
// uses unicode.
contract UnicodeIdentifierInCode {
    string public café_name = unicode"Café Solidity"; // ASCII identifier, unicode content
}