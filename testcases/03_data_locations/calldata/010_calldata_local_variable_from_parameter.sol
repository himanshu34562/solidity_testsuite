// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a local variable can explicitly be declared `calldata`,
// referencing a portion of an existing calldata parameter -- distinct
// from calldata only ever appearing directly as a function parameter
// type. This is most useful in combination with slicing.
contract CalldataLocalVariableFromParameter {
    function processSlice(uint256[] calldata arr) external pure returns (uint256) {
        uint256[] calldata slice = arr[1:]; // local calldata variable, from a slice expression
        uint256 total = 0;
        for (uint256 i = 0; i < slice.length; i++) {
            total += slice[i];
        }
        return total;
    }
}