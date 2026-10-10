// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- 1 << n is computed in uint256 (see
// 011), so assigning it to a uint8 is an implicit narrowing conversion
// and is rejected. The fix is uint8(1) << n (see 012).
// EXPECTED: compile error, uint256 is not implicitly convertible to
// uint8.
contract LiteralShiftedByNonLiteralToNarrowTypeExpectedFail {
    function f(uint256 n) public pure returns (uint8) {
        uint8 r = 1 << n;   // should fail to compile
        return r;
    }
}