// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: scientific notation (Ne+M / NeM) integer literals -- must be
// evaluated at compile time to a plain integer constant, same as if
// written in decimal form directly.
contract ScientificNotationLiteral {
    uint256 public value = 1e18; // must equal 1000000000000000000

    function getSmallScientific() public pure returns (uint256) {
        return 5e3; // must equal 5000
    }
}