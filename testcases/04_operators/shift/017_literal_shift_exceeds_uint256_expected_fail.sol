// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a literal shifted by a literal is
// folded to an exact value, and 1 << 256 equals 2**256, which does not
// fit in uint256. Contrast with the NON-literal form (see 006), where
// the same shift silently yields 0 at runtime.
// EXPECTED: compile error, the constant is not implicitly convertible
// to uint256.
contract LiteralShiftExceedsUint256ExpectedFail {
    function f() public pure returns (uint256) {
        uint256 x = 1 << 256;   // should fail to compile
        return x;
    }
}