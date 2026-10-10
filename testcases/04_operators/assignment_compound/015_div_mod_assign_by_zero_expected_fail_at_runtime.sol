// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: /= and %= by a runtime zero revert with Panic(0x12), same as
// plain division and modulo. Compiles fine because the divisor is not a
// compile-time constant.
// EXPECTED: divAssign(1, 0) and modAssign(1, 0) revert with Panic(0x12).
contract DivModAssignByZeroExpectedFailAtRuntime {
    function divAssign(uint256 a, uint256 b) public pure returns (uint256) {
        a /= b;
        return a;
    }

    function modAssign(uint256 a, uint256 b) public pure returns (uint256) {
        a %= b;
        return a;
    }
}