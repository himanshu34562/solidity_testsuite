// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: nested and mixed logical expressions with parentheses and
// negation, to exercise control-flow lowering of several short-circuit
// operators in one expression.
// EXPECTED: grouped(true, false, true, true) == true,
// grouped(true, false, false, true) == false.
contract NestedLogicalExpressions {
    function grouped(bool a, bool b, bool c, bool d) public pure returns (bool) {
        return a && (b || c) && d;
    }

    function negatedMix(bool a, bool b, bool c) public pure returns (bool) {
        return !(a && !b) || c;
    }
}
