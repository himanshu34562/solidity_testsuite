// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline <, <=, > and >= on unsigned integers.
// EXPECTED: lt(1, 2) == true, le(2, 2) == true, gt(2, 1) == true,
// ge(1, 2) == false.
contract RelationalUnsigned {
    function lt(uint256 a, uint256 b) public pure returns (bool) {
        return a < b;
    }

    function le(uint256 a, uint256 b) public pure returns (bool) {
        return a <= b;
    }

    function gt(uint256 a, uint256 b) public pure returns (bool) {
        return a > b;
    }

    function ge(uint256 a, uint256 b) public pure returns (bool) {
        return a >= b;
    }
}
