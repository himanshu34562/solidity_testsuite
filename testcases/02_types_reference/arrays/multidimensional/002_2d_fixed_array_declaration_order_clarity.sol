// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: explicit, deliberately asymmetric dimensions to make the
// declaration-order rule unambiguous. uint256[4][7] declares an array
// of 7 elements, each an array of 4 -- reading right-to-left: "7 arrays
// of 4", not "4 arrays of 7". Confirmed by which index bound triggers
// a compile-time out-of-bounds error.
contract TwoDFixedArrayDeclarationOrderClarity {
    uint256[4][7] public data; // 7 outer elements, each with 4 inner elements

    function outerLength() public pure returns (uint256) {
        return 7; // data.length would be 7
    }

    function innerLength() public pure returns (uint256) {
        return 4; // data[i].length would be 4 for any valid i
    }

    function getOuterLength() public view returns (uint256) {
        return data.length; // should be 7, confirming outer dimension
    }
}