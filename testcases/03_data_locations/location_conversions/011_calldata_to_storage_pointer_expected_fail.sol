// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a calldata array cannot be bound to a
// local `storage` pointer, for the same reason as 010. (Copying
// calldata into a storage STATE variable is fine -- see 003 -- but
// that is a copy, not a pointer binding.)
// EXPECTED: compile error, calldata array is not implicitly
// convertible to a storage pointer.
contract CalldataToStoragePointerExpectedFail {
    function f(uint256[] calldata c) external {
        uint256[] storage p = c;   // should fail to compile
        p[0] = 1;
    }
}