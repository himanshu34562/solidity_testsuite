// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a literal that does not fit the variable's type is still
// comparable WHEN the variable widens into the literal's own smallest
// type: unsigned variable vs positive literal, or signed variable vs
// negative literal. The comparison happens in that wider type and the
// literal is NOT truncated. A converter that narrowed 256 to uint8
// would turn it into 0 and get eq(0) wrong. (Signed variable vs a
// too-large POSITIVE literal does not compile -- see 026.)
// EXPECTED: eq(x) == false for every uint8 x (including 0), lt(x) ==
// true for every uint8 x, eqNegative(x) == false for every int8 x.
contract LiteralWiderThanVariableWidensComparison {
    function eq(uint8 x) public pure returns (bool) {
        return x == 256;     // compared as uint16, always false
    }

    function lt(uint8 x) public pure returns (bool) {
        return x < 1000;     // always true
    }

    function eqNegative(int8 x) public pure returns (bool) {
        return x == -200;    // compared as int16, always false
    }
}
