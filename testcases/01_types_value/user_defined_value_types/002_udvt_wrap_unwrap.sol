// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: .wrap() and .unwrap() are the ONLY built-in ways to convert
// between a UDVT and its underlying type -- these should be zero-cost
// at the IR level (pure reinterpretation, no actual computation), since
// the UDVT has identical bit representation to its underlying type.
type TokenAmount is uint256;

contract UdvtWrapUnwrap {
    function wrapValue(uint256 raw) public pure returns (TokenAmount) {
        return TokenAmount.wrap(raw);
    }

    function unwrapValue(TokenAmount t) public pure returns (uint256) {
        return TokenAmount.unwrap(t);
    }
}