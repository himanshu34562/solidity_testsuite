// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: memory array branches of the same type are allowed. The
// result is a REFERENCE to the chosen array (no copy), so writing
// through it modifies the original.
// EXPECTED: lengthOf(true) == 1, lengthOf(false) == 2, aliases(true) == 99.
contract TernaryMemoryArrayBranches {
    function lengthOf(bool c) public pure returns (uint256) {
        uint256[] memory a = new uint256[](1);
        uint256[] memory b = new uint256[](2);
        uint256[] memory chosen = c ? a : b;
        return chosen.length;
    }

    function aliases(bool c) public pure returns (uint256) {
        uint256[] memory a = new uint256[](1);
        uint256[] memory b = new uint256[](2);
        uint256[] memory chosen = c ? a : b;
        chosen[0] = 99;
        return c ? a[0] : b[0];
    }
}
