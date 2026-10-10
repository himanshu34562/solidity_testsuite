// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: signed relational operators compare as SIGNED values, while
// the same bit pattern cast to unsigned compares as UNSIGNED. -1 is the
// smallest-looking value as signed but the largest as unsigned. A
// converter must pick slt/sgt for int types and ult/ugt for uint types.
// EXPECTED: signedLess(-1, 0) == true, unsignedLess(-1, 0) == false.
contract RelationalSignedVsUnsignedView {
    function signedLess(int256 a, int256 b) public pure returns (bool) {
        return a < b;
    }

    function unsignedLess(int256 a, int256 b) public pure returns (bool) {
        return uint256(a) < uint256(b);
    }

    function signedLessI8(int8 a, int8 b) public pure returns (bool) {
        return a < b;
    }
}
