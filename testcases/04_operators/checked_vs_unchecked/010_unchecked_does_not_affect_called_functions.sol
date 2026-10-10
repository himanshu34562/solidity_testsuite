// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: an unchecked block affects only the arithmetic written
// lexically INSIDE it, not functions it calls. A checked callee still
// reverts, and an unchecked callee still wraps when called from checked
// code. A converter that tracked "unchecked" as a dynamic mode instead
// of a per-expression property would get these wrong.
// EXPECTED: direct(200, 100) == 44, viaCheckedCallee(200, 100) reverts
// with Panic(0x11), viaUncheckedCallee(200, 100) == 44.
contract UncheckedDoesNotAffectCalledFunctions {
    function addChecked(uint8 a, uint8 b) internal pure returns (uint8) {
        return a + b;
    }

    function addUnchecked(uint8 a, uint8 b) internal pure returns (uint8) {
        unchecked {
            return a + b;
        }
    }

    function direct(uint8 a, uint8 b) public pure returns (uint8) {
        unchecked {
            return a + b;
        }
    }

    function viaCheckedCallee(uint8 a, uint8 b) public pure returns (uint8) {
        unchecked {
            return addChecked(a, b);   // callee is still checked
        }
    }

    function viaUncheckedCallee(uint8 a, uint8 b) public pure returns (uint8) {
        return addUnchecked(a, b);     // callee still wraps
    }
}
