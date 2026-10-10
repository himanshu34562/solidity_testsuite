// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- shift operators do not apply to
// address directly; it would need an explicit conversion to uint160
// first.
// EXPECTED: compile error, operator << not compatible with types
// address and uint256.
contract ShiftOnAddressExpectedFail {
    function f(address a, uint256 n) public pure returns (address) {
        return a << n;   // should fail to compile
    }
}