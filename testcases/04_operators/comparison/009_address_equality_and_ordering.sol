// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: address supports all six comparison operators; ordering
// compares the underlying 160-bit unsigned value. Comparing against
// address(0) is the common zero-address check.
// EXPECTED: isZero(address(0)) == true.
contract AddressEqualityAndOrdering {
    function eq(address a, address b) public pure returns (bool) {
        return a == b;
    }

    function ne(address a, address b) public pure returns (bool) {
        return a != b;
    }

    function lt(address a, address b) public pure returns (bool) {
        return a < b;
    }

    function ge(address a, address b) public pure returns (bool) {
        return a >= b;
    }

    function isZero(address a) public pure returns (bool) {
        return a == address(0);
    }
}
