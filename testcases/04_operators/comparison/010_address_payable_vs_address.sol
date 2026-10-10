// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: `address payable` converts implicitly to `address`, so the
// two can be compared directly in either order.
contract AddressPayableVsAddress {
    function eq(address payable p, address a) public pure returns (bool) {
        return p == a;
    }

    function eqReverse(address a, address payable p) public pure returns (bool) {
        return a == p;
    }

    function ltMixed(address payable p, address a) public pure returns (bool) {
        return p < a;
    }
}
