// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: fully dynamic 2D array -- uint256[][] is a dynamic array
// where EACH element is itself an independently-sized dynamic array
// (a genuine "jagged array" / ragged array, not a rectangular grid).
// Each inner array must be independently allocated/pushed-to.
contract TwoDDynamicArrayOfDynamicArrays {
    uint256[][] public jagged;

    function addRow() public {
        jagged.push(); // appends a new empty inner dynamic array
    }

    function pushToRow(uint256 rowIndex, uint256 value) public {
        jagged[rowIndex].push(value);
    }

    function getAt(uint256 rowIndex, uint256 colIndex) public view returns (uint256) {
        return jagged[rowIndex][colIndex];
    }

    function rowLength(uint256 rowIndex) public view returns (uint256) {
        return jagged[rowIndex].length;
    }
}