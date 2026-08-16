// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: internal function types DO support == and != directly --
// this is a genuine EXCEPTION to the "no built-in == for
// reference/composite types" rule confirmed repeatedly across arrays,
// structs, bytes, and string earlier in this suite. Function types
// are compared by their underlying code pointer identity.
// NOTE: these comparison functions must themselves be internal, not
// public -- an internal function type cannot appear in a public/
// external function's signature at all (that restriction is the
// actual subject of file 007).
contract InternalFunctionTypeEqualityComparison {
    function double(uint256 x) internal pure returns (uint256) {
        return x * 2;
    }

    function triple(uint256 x) internal pure returns (uint256) {
        return x * 3;
    }

    function isSameFunction(
        function(uint256) internal pure returns (uint256) a,
        function(uint256) internal pure returns (uint256) b
    ) internal pure returns (bool) {
        return a == b; // valid, unlike composite types
    }

    function compareToDouble(function(uint256) internal pure returns (uint256) fn) internal pure returns (bool) {
        return fn == double;
    }

    function testEquality() public pure returns (bool, bool) {
        return (isSameFunction(double, double), compareToDouble(triple));
        // expect (true, false)
    }
}