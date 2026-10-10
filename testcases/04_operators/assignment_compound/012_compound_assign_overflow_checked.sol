// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: compound assignment is checked arithmetic by default, so
// += and *= overflow revert in >=0.8.0.
// EXPECTED: addAssign(type(uint256).max, 1) reverts with Panic(0x11);
// mulAssign(type(uint256).max, 2) reverts the same way.
contract CompoundAssignOverflowChecked {
    function addAssign(uint256 a, uint256 b) public pure returns (uint256) {
        a += b;
        return a;
    }

    function mulAssign(uint256 a, uint256 b) public pure returns (uint256) {
        a *= b;
        return a;
    }
}