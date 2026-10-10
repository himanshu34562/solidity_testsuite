// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- address is not an integer type, so
// bitwise operators do not apply to it directly. The operands would
// need an explicit conversion to uint160 first.
// EXPECTED: compile error, operator & not compatible with types
// address and address.
contract BitwiseOnAddressExpectedFail {
    function f(address a, address b) public pure returns (address) {
        return a & b;   // should fail to compile
    }
}