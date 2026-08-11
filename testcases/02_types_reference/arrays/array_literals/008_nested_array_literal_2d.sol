// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a literal for a 2D array -- an array literal whose elements
// are themselves array literals. Tests that literal type inference and
// the declaration-order rule from multidimensional/ compose correctly
// when both are literal-constructed rather than declared as a state
// variable type.
contract NestedArrayLiteral2D {
    function getGrid() public pure returns (uint256[2][2] memory) {
        return [[uint256(1), 2], [uint256(3), 4]];
    }
}