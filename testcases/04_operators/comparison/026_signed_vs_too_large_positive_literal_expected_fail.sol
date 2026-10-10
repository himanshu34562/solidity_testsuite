// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a signed variable cannot be compared
// with a positive literal that exceeds its range. The literal's
// smallest type (here uint8 for 200) is unsigned, and int8 does not
// convert to it, so no common type exists. Contrast with the unsigned
// case in 022, which compiles.
// EXPECTED: compile error, operator > not compatible with types int8
// and int_const 200.
contract SignedVsTooLargePositiveLiteralExpectedFail {
    function f(int8 x) public pure returns (bool) {
        return x > 200;   // should fail to compile
    }
}
