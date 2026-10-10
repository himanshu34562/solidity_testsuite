// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: to compute a shift in a NARROWER type, cast the literal
// first. uint8(1) << n is computed in uint8, so high bits are discarded
// at 8 bits. (Without the cast this does not compile -- see 018.)
// EXPECTED: shift(7) == 128, shift(8) == 0.
contract ExplicitCastLiteralBeforeShift {
    function shift(uint256 n) public pure returns (uint8) {
        return uint8(1) << n;
    }
}