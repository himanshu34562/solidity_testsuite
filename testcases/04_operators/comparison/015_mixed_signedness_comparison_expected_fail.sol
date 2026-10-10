// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- comparing uint256 with int256 is
// rejected because neither type converts implicitly to the other, so
// there is no common type. (A narrower unsigned type CAN be compared
// with a wider signed type, since it widens into it.)
// EXPECTED: compile error, operator < not compatible with types uint256
// and int256.
contract MixedSignednessComparisonExpectedFail {
    function f(uint256 a, int256 b) public pure returns (bool) {
        return a < b;   // should fail to compile
    }
}
