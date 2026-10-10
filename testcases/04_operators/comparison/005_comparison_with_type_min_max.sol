// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: comparisons at the extremes of each type, via type(T).min
// and type(T).max. Boundary values are where wrong signedness or
// off-by-one lowering shows up.
// EXPECTED: minLessThanMax() == true, isMaxU256(type(uint256).max) == true,
// isMinI256(type(int256).min) == true.
contract ComparisonWithTypeMinMax {
    function minLessThanMax() public pure returns (bool) {
        return type(int256).min < type(int256).max;
    }

    function isMaxU256(uint256 x) public pure returns (bool) {
        return x == type(uint256).max;
    }

    function isMaxU8(uint8 x) public pure returns (bool) {
        return x == type(uint8).max;
    }

    function isMinI256(int256 x) public pure returns (bool) {
        return x == type(int256).min;
    }

    function atLeastMinI8(int8 x) public pure returns (bool) {
        return x >= type(int8).min;
    }
}
