// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: fixed-size array as a function parameter/return type
// (memory location) -- distinct calling convention from dynamic
// arrays, since the size is part of the type signature itself.
contract FixedArrayAsFunctionParameter {
    function sumArray(uint256[3] memory arr) public pure returns (uint256) {
        return arr[0] + arr[1] + arr[2];
    }

    function identity(uint256[3] memory arr) public pure returns (uint256[3] memory) {
        return arr;
    }
}