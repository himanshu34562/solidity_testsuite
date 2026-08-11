// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ArrayLiteralBasicInline {
    function getTriple() public pure returns (uint256[3] memory) {
        return [uint256(1), 2, 3];
        // NOTE: at least one element must be explicitly typed (uint256(1))
        // for a literal array used as a return value -- see 002 for why.
    }
}