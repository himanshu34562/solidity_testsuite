// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline logical NOT on a bool operand.
// EXPECTED: not(true) == false, not(false) == true.
contract NotBasic {
    function not(bool a) public pure returns (bool) {
        return !a;
    }
}
