// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- unchecked changes RUNTIME arithmetic
// only. Literal arithmetic is evaluated at compile time with arbitrary
// precision, so 255 + 1 is exactly 256 and no longer fits uint8. This
// is a type error regardless of any unchecked block.
// EXPECTED: compile error, int_const 256 is not implicitly convertible
// to uint8.
contract UncheckedLiteralOverflowExpectedFail {
    function f() public pure returns (uint8) {
        unchecked {
            uint8 x = 255 + 1;   // should fail to compile
            return x;
        }
    }
}
