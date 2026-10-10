// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a memory array cannot be bound to a
// local `storage` pointer. A storage pointer must refer to something
// that actually lives in storage; a memory array does not.
// EXPECTED: compile error, memory array is not implicitly convertible
// to a storage pointer.
contract MemoryToStoragePointerExpectedFail {
    uint256[] public data;

    function f() public {
        uint256[] memory m = new uint256[](2);
        uint256[] storage p = m;   // should fail to compile
        p[0] = 1;
    }
}