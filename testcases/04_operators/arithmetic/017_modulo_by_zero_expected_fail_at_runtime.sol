// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: modulo by a runtime zero also reverts with Panic(0x12),
// the same code as division by zero.
// EXPECTED: mod(1, 0) reverts with Panic(0x12).
contract ModuloByZeroExpectedFailAtRuntime {
    function mod(uint256 a, uint256 b) public pure returns (uint256) {
        return a % b;
    }

    function modSigned(int256 a, int256 b) public pure returns (int256) {
        return a % b;
    }
}