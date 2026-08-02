// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: explicit conversion between DIFFERENT bytesN widths.
// Widening (bytes4 -> bytes8) pads with zero bytes on the RIGHT
// (since data is right-padded). Narrowing (bytes8 -> bytes4) truncates
// from the RIGHT, keeping only the leading bytes. This is the opposite
// truncation/extension direction from integer casts, worth its own
// dedicated codegen path.
contract BytesNWideningNarrowingConversion {
    function widen(bytes4 b) public pure returns (bytes8) {
        return bytes8(b);
    }

    function narrow(bytes8 b) public pure returns (bytes4) {
        return bytes4(b);
    }
}