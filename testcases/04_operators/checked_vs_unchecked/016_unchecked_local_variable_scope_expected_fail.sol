// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a variable declared inside an
// unchecked block is not visible after the closing brace (compare 015,
// where the result is carried out through an outer variable).
// EXPECTED: compile error, undeclared identifier.
contract UncheckedLocalVariableScopeExpectedFail {
    function f(uint8 a, uint8 b) public pure returns (uint8) {
        unchecked {
            uint8 t = a + b;
        }
        return t;   // should fail to compile
    }
}
