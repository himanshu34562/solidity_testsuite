// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: mixed fixed/dynamic 2D array -- uint256[3][] is a DYNAMIC
// array where each element is a FIXED-size array of 3. Contrast with
// uint256[][3] (below, in a separate function context) which would be
// a FIXED array of 3 elements, each a DYNAMIC array. The declaration-
// order rule applies consistently even when mixing fixed and dynamic
// dimensions.
contract TwoDMixedFixedAndDynamic {
    uint256[3][] public dynamicOuterFixedInner; // dynamic count of fixed-3 rows

    function addRow(uint256 a, uint256 b, uint256 c) public {
        dynamicOuterFixedInner.push([a, b, c]);
    }

    function getAt(uint256 rowIndex, uint256 colIndex) public view returns (uint256) {
        return dynamicOuterFixedInner[rowIndex][colIndex];
    }

    function rowCount() public view returns (uint256) {
        return dynamicOuterFixedInner.length; // runtime length, outer is dynamic
    }
}