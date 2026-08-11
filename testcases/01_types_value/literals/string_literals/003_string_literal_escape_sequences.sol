// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: standard escape sequences (\n, \t, \\, \", \r) must be
// correctly decoded at compile time into their literal byte values,
// not kept as literal backslash-n text.
contract StringLiteralEscapeSequences {
    string public withNewline = "line1\nline2";
    string public withTab = "col1\tcol2";
    string public withBackslash = "path\\to\\file";
    string public withQuote = "she said \"hello\"";
}