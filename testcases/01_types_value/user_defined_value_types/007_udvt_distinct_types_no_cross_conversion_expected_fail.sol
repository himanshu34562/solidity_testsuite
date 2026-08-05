// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- two DIFFERENT UDVTs backed by the same
// underlying type (uint256) must NOT be implicitly interchangeable with
// each other either, even though their underlying representation is
// identical. This tests that the converter tracks UDVT identity, not
// just underlying-type identity.
// EXPECTED: compile error -- TokenAmount and UserId are distinct types
// despite both wrapping uint256.
type TokenAmount is uint256;
type UserId is uint256;

contract UdvtDistinctTypesNoCrossConversionExpectedFail {
    function badCast(TokenAmount t) public pure returns (UserId) {
        UserId u = t; // should fail: TokenAmount != UserId despite same underlying type
        return u;
    }
}