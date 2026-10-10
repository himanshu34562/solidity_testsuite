// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- the widening in 022 has a limit. A
// literal larger than any 256-bit integer has no integer type to be
// compared in, so the comparison is rejected.
// EXPECTED: compile error, operator == not compatible with types
// uint256 and int_const (2**256).
contract LiteralBeyondUint256ExpectedFail {
    function f(uint256 x) public pure returns (bool) {
        return x == 2 ** 256;   // should fail to compile
    }
}
