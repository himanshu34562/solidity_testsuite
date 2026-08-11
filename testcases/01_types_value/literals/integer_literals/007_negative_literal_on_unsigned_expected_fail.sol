// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a negative literal assigned to an
// unsigned type must be a compile-time error.
// EXPECTED: compile error, literal -1 not representable in type uint256.
contract NegativeLiteralOnUnsignedExpectedFail {
    uint256 public value = -1; // should fail: negative literal, unsigned type
}