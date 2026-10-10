// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: division by a runtime zero reverts with a Panic. Compiles
// fine because the divisor is not a compile-time constant (the literal
// form is a compile error -- see 018).
// EXPECTED: divide(1, 0) reverts with Panic(0x12).
contract DivisionByZeroExpectedFailAtRuntime {
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        return a / b;
    }

    function divideSigned(int256 a, int256 b) public pure returns (int256) {
        return a / b;
    }
}