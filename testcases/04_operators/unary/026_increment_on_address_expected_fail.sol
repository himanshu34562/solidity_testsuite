// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- ++ does not apply to address; it would
// need an explicit round trip through uint160.
// EXPECTED: compile error, unary operator ++ cannot be applied to type
// address.
contract IncrementOnAddressExpectedFail {
    function f(address a) public pure returns (address) {
        a++;   // should fail to compile
        return a;
    }
}
