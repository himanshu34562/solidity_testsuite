// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- confirms UDVTs reject implicit
// conversion to/from their underlying type at compile time. This file
// is EXPECTED to fail compilation.
// EXPECTED: compile error, "Type uint256 is not implicitly convertible
// to expected type TokenAmount" (or similar).
type TokenAmount is uint256;

contract UdvtImplicitConversionExpectedFail {
    function badAssign(uint256 raw) public pure returns (TokenAmount) {
        TokenAmount t = raw; // should fail: no implicit conversion
        return t;
    }
}