// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- arrays (fixed or dynamic) have NO
// built-in == operator in Solidity, unlike bytesN/bool/address/enum.
// This is a genuinely easy thing to assume exists by analogy with
// other composite types, but it doesn't.
// EXPECTED: compile error, operator == not compatible with array types.
contract FixedArrayComparisonExpectedFail {
    function isEqual(uint256[3] memory a, uint256[3] memory b) public pure returns (bool) {
        return a == b; // should fail: no == for arrays
    }
}