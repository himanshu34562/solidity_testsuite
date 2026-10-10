// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- conditions must be bool. There is no
// "non-zero is true" rule, so an integer cannot be used directly in an
// if condition.
// EXPECTED: compile error, uint256 is not implicitly convertible to
// bool.
contract IntegerInIfConditionExpectedFail {
    function f(uint256 x) public pure returns (uint256) {
        if (x) {   // should fail to compile
            return 1;
        }
        return 0;
    }
}
