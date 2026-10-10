// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- applying ~ to the literal 0 gives the
// literal -1 (an integer-constant type), which cannot be implicitly
// converted to an unsigned type. The correct idioms are
// ~uint256(0) or type(uint256).max (see 004).
// EXPECTED: compile error, int_const -1 is not implicitly convertible
// to uint256.
contract NotZeroLiteralToUnsignedExpectedFail {
    function f() public pure returns (uint256) {
        uint256 x = ~0;   // should fail to compile
        return x;
    }
}