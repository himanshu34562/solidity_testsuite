// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: hex"..." literal syntax produces a bytes value directly from
// hex-encoded byte pairs -- distinct from a numeric 0x... literal (which
// is an integer/bytesN value depending on context). hex"" literals are
// ALWAYS typed as bytes (or bytesN if the target width matches exactly).
contract HexStringLiteralBasic {
    bytes public value = hex"01020304";

    function getHexBytes() public pure returns (bytes memory) {
        return hex"deadbeef";
    }
}