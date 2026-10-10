// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a memory array cannot be passed to a
// function expecting a `storage` reference parameter, since a memory
// array does not live in storage. (Parameter-passing counterpart of
// location_conversions/010.)
// EXPECTED: compile error, invalid implicit conversion from memory
// array to storage pointer in the call argument.
contract MemoryArgumentToStorageParamExpectedFail {
    function setFirst(uint256[] storage arr) internal {
        arr[0] = 1;
    }

    function f() public {
        uint256[] memory m = new uint256[](1);
        setFirst(m);   // should fail to compile
    }
}