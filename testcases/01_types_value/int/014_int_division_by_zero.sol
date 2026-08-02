// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: division by zero reverts with Panic(0x12), same as uint,
// unchecked{} does NOT suppress this guard.
contract IntDivisionByZero {
    function divide(int256 a, int256 b) public pure returns (int256) {
        return a / b; // reverts if b == 0
    }
}