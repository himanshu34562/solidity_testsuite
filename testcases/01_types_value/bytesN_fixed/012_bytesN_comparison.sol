// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BytesNComparison {
    function isEqual(bytes4 a, bytes4 b) public pure returns (bool) {
        return a == b;
    }

    function isNotEqual(bytes4 a, bytes4 b) public pure returns (bool) {
        return a != b;
    }

    function lessThan(bytes4 a, bytes4 b) public pure returns (bool) {
        return a < b; // lexicographic/numeric ordering comparison
    }
}