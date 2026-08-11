// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: string as a local memory variable inside a function body,
// distinct from state-variable storage or parameter passing.
contract StringMemoryLocalVariable {
    function buildGreeting() public pure returns (string memory) {
        string memory greeting = "Hello";
        return greeting;
    }
}