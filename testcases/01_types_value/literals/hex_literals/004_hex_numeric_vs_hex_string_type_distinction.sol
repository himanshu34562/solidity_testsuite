// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: contrasts 0x... (numeric hex literal, integer type) against
// hex"..." (hex string literal, bytes type) -- these look superficially
// similar but are fundamentally different literal kinds with different
// type-inference and padding rules. Tests that the converter's lexer/
// parser correctly distinguishes the two syntaxes.
contract HexNumericVsHexStringTypeDistinction {
    uint256 public numericHex = 0x0102; // integer value 258
    bytes public stringHex = hex"0102";  // byte sequence [0x01, 0x02]

    function getNumericAsUint() public view returns (uint256) {
        return numericHex; // 258
    }

    function getStringHexLength() public view returns (uint256) {
        return stringHex.length; // 2
    }
}