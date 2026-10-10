// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- && requires bool operands. Integers
// have no truthiness in Solidity, so they are not implicitly converted.
// EXPECTED: compile error, operator && not compatible with types uint256
// and uint256.
contract LogicalAndOnIntegersExpectedFail {
    function f(uint256 a, uint256 b) public pure returns (bool) {
        return a && b;   // should fail to compile
    }
}
