// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: since UDVTs have no built-in comparison operators, equality
// checks must go through explicit unwrap -- tests the common real-world
// pattern of comparing two UDVT values.
type TokenAmount is uint256;

contract UdvtComparisonViaUnwrap {
    function isEqual(TokenAmount a, TokenAmount b) public pure returns (bool) {
        return TokenAmount.unwrap(a) == TokenAmount.unwrap(b);
    }
}