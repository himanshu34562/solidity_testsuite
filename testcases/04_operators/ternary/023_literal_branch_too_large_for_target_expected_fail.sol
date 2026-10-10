// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- the result type comes from BOTH
// branches. 1 and 256 give uint16, so assigning the result to a uint8
// is a narrowing conversion even though the branch holding 256 may never
// be taken (compare 006, where the same shape fits uint16).
// EXPECTED: compile error, uint16 is not implicitly convertible to uint8.
contract LiteralBranchTooLargeForTargetExpectedFail {
    function f(bool c) public pure returns (uint8) {
        uint8 x = c ? 1 : 256;   // should fail to compile
        return x;
    }
}
