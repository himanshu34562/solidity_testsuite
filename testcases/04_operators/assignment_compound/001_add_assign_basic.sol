// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline += on local variables of different widths and
// signedness. a += b behaves like a = a + b, including the checked
// overflow behaviour (see 012).
// EXPECTED: addAssign(2, 3) == 5.
contract AddAssignBasic {
    function addAssign(uint256 a, uint256 b) public pure returns (uint256) {
        a += b;
        return a;
    }

    function addAssignU8(uint8 a, uint8 b) public pure returns (uint8) {
        a += b;
        return a;
    }

    function addAssignSigned(int256 a, int256 b) public pure returns (int256) {
        a += b;
        return a;
    }
}