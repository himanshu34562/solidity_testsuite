// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BoolNegation {
    function negate(bool x) public pure returns (bool) {
        return !x;
    }
}