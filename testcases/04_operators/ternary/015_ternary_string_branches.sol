// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: string literal branches of different lengths give a common
// string memory result, and string memory variables work as branches too.
// EXPECTED: label(true) == "yes", label(false) == "no".
contract TernaryStringBranches {
    function label(bool c) public pure returns (string memory) {
        return c ? "yes" : "no";
    }

    function labelVar(bool c, string memory a, string memory b) public pure returns (string memory) {
        return c ? a : b;
    }
}
