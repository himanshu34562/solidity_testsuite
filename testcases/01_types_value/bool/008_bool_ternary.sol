// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BoolTernary {
    function selectValue(bool cond, uint256 a, uint256 b) public pure returns (uint256) {
        return cond ? a : b;
    }
}