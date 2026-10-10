// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: -= on an unsigned value below zero reverts by default in
// >=0.8.0.
// EXPECTED: subAssign(0, 1) reverts with Panic(0x11).
contract CompoundAssignUnderflowChecked {
    function subAssign(uint256 a, uint256 b) public pure returns (uint256) {
        a -= b;
        return a;
    }
}