// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- unchecked blocks cannot be nested; the
// inner block is redundant and rejected.
// EXPECTED: compile error, "unchecked" blocks cannot be nested.
contract NestedUncheckedBlocksExpectedFail {
    function f(uint8 a, uint8 b) public pure returns (uint8) {
        unchecked {
            unchecked {   // should fail to compile
                return a + b;
            }
        }
    }
}
