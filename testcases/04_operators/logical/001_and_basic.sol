// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline logical AND on bool operands.
// EXPECTED: and(true, true) == true; false for every other combination.
contract AndBasic {
    function and(bool a, bool b) public pure returns (bool) {
        return a && b;
    }
}
