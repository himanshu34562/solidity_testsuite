// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a conditional expression is allowed in a constant's
// initializer when the condition and branches are themselves constant;
// the compiler folds it to one value.
// EXPECTED: limit() == 100, SMALL == 1.
contract TernaryInConstantInitializer {
    uint256 public constant LIMIT = 10 > 5 ? 100 : 200;
    uint256 public constant SMALL = true ? 1 : 2;

    function limit() public pure returns (uint256) {
        return LIMIT;
    }
}
