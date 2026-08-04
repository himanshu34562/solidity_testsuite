// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EnumComparison {
    enum Status { Pending, Active, Completed, Cancelled }

    function isEqual(Status a, Status b) public pure returns (bool) {
        return a == b;
    }

    function isNotEqual(Status a, Status b) public pure returns (bool) {
        return a != b;
    }

    function isLessThan(Status a, Status b) public pure returns (bool) {
        return a < b; // enums support ordinal ordering comparisons
    }
}