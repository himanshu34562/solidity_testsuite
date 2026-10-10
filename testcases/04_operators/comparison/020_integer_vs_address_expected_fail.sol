// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- address and uint160 do not convert
// implicitly in either direction, so they cannot be compared directly.
// An explicit conversion on one side is required.
// EXPECTED: compile error, operator == not compatible with types
// address and uint160.
contract IntegerVsAddressExpectedFail {
    function f(address a, uint160 b) public pure returns (bool) {
        return a == b;   // should fail to compile
    }
}
