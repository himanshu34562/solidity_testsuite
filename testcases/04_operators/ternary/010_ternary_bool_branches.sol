// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: ?: works on bool branches, both as constants and as variables.
// EXPECTED: asBool(10) == true, asBool(1) == false,
// boolBranches(true, false, true) == false.
contract TernaryBoolBranches {
    function asBool(uint256 x) public pure returns (bool) {
        return x > 5 ? true : false;
    }

    function boolBranches(bool c, bool a, bool b) public pure returns (bool) {
        return c ? a : b;
    }
}
