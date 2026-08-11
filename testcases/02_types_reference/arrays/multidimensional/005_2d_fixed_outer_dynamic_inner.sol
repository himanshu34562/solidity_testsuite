// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the OPPOSITE mix from file 004 -- uint256[][3] is a FIXED
// array of exactly 3 elements, each an independently-growable dynamic
// array. Deliberately paired with 004 so the two mixed-dimension cases
// sit side by side and the declaration-order distinction is impossible
// to conflate.
contract TwoDFixedOuterDynamicInner {
    uint256[][3] public fixedOuterDynamicInner; // exactly 3 rows, each independently growable

    function pushToRow(uint256 rowIndex, uint256 value) public {
        fixedOuterDynamicInner[rowIndex].push(value);
    }

    function getAt(uint256 rowIndex, uint256 colIndex) public view returns (uint256) {
        return fixedOuterDynamicInner[rowIndex][colIndex];
    }

    function outerLength() public pure returns (uint256) {
        return 3; // fixed at the type level, not queryable via .length on the outer dimension directly in the same way
    }
}