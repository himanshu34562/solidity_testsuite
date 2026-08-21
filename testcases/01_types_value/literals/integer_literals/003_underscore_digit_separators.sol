// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: Solidity allows underscore digit separators in numeric
// literals for readability (e.g. 1_000_000) -- these must be stripped
// at parse time and have ZERO effect on the resulting value or codegen.
contract UnderscoreDigitSeparators {
    uint256 public value = 1_000_000; // must equal exactly 1000000

    function getSeparatedHex() public pure returns (uint256) {
        return 0xFF_FF; // must equal exactly 0xFFFF (65535)
    }
}