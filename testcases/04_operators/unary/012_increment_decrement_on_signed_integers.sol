// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: ++ and -- cross zero correctly on signed integers and are
// overflow-checked at the signed range limits.
// EXPECTED: inc(-1) == 0, dec(0) == -1, inc(127) and dec(-128) revert with
// Panic(0x11).
contract IncrementDecrementOnSignedIntegers {
    function inc(int8 x) public pure returns (int8) {
        x++;
        return x;
    }

    function dec(int8 x) public pure returns (int8) {
        x--;
        return x;
    }
}
