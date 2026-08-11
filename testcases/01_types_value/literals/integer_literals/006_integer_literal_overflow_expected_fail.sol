// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a literal that doesn't fit the
// declared/target type's range must be a COMPILE-TIME error, not a
// runtime revert (contrast with 005_enum_out_of_range... where the
// static-vs-dynamic distinction mattered; here a literal is always
// statically known, so it's always a compile error).
// EXPECTED: compile error, literal 300 too large for uint8 (max 255).
contract IntegerLiteralOverflowExpectedFail {
    uint8 public value = 300; // should fail: doesn't fit uint8
}