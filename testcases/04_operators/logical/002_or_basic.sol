// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline logical OR on bool operands.
// EXPECTED: or(false, false) == false; true for every other combination.
contract OrBasic {
    function or(bool a, bool b) public pure returns (bool) {
        return a || b;
    }
}
