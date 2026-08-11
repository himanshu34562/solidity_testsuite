// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- an array literal's element count is
// baked into its inferred type as a fixed size. Assigning it to a
// fixed-size target with a DIFFERENT element count must fail, since
// the two fixed-size array types are simply incompatible (T[3] is not
// assignable to a T[5] target).
// EXPECTED: compile error, type mismatch between uint256[3] and uint256[5].
contract ArrayLiteralElementCountMismatchExpectedFail {
    function getMismatched() public pure returns (uint256[5] memory) {
        return [uint256(1), 2, 3]; // 3-element literal, 5-element target -- should fail
    }
}