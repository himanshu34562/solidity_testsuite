// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- arrays cannot be compared with ==,
// even when both have the same element type and location.
// EXPECTED: compile error, operator == not compatible with types
// uint256[] memory and uint256[] memory.
contract ArrayEqualityExpectedFail {
    function f(uint256[] memory a, uint256[] memory b) public pure returns (bool) {
        return a == b;   // should fail to compile
    }
}
