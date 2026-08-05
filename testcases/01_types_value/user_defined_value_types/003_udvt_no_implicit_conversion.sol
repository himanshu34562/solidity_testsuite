// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm UDVTs do NOT implicitly convert to/from their
// underlying type -- this is the entire point of the feature (type
// safety). This file only compiles because it uses explicit wrap/unwrap;
// see the sibling _expected_fail file for what happens without them.
type TokenAmount is uint256;

contract UdvtNoImplicitConversion {
    function addRaw(TokenAmount a, uint256 b) public pure returns (TokenAmount) {
        // must explicitly unwrap, do arithmetic on the underlying type,
        // then explicitly wrap back -- no operator is defined on TokenAmount itself
        return TokenAmount.wrap(TokenAmount.unwrap(a) + b);
    }
}