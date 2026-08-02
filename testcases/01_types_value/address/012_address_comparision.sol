// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AddressComparison {
    function isEqual(address a, address b) public pure returns (bool) {
        return a == b;
    }

    function isNotEqual(address a, address b) public pure returns (bool) {
        return a != b;
    }

    function lessThan(address a, address b) public pure returns (bool) {
        return a < b; // addresses support ordering comparisons too
    }
}