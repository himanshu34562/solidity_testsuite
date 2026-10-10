// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a memory array cannot be passed
// directly to an internal function whose parameter is `calldata`.
// Calldata is a read-only region holding the original call input, and
// memory data cannot be reinterpreted as calldata without an external
// call (see 009 for the legal external-call form).
// EXPECTED: compile error, invalid implicit conversion from memory
// array to calldata array.
contract MemoryToCalldataInternalParameterExpectedFail {
    function takesCalldata(uint256[] calldata c) internal pure returns (uint256) {
        return c.length;
    }

    function f() public pure returns (uint256) {
        uint256[] memory m = new uint256[](2);
        return takesCalldata(m);   // should fail to compile
    }
}