// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a constant cannot be modified, by ++ or
// by any other operator.
// EXPECTED: compile error, cannot modify a constant variable.
contract IncrementOnConstantExpectedFail {
    uint256 constant LIMIT = 1;

    function f() public pure returns (uint256) {
        LIMIT++;   // should fail to compile
        return LIMIT;
    }
}
