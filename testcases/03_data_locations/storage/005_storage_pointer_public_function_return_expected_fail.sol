// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- CONTRAST with 004. A PUBLIC/EXTERNAL
// function CANNOT return a storage pointer, since a raw storage
// reference (essentially a slot address) has no meaningful
// representation across the ABI boundary to an external caller.
// EXPECTED: compile error, data location must be "memory" or
// "calldata" for return parameter in function, but "storage" was given.
contract StoragePointerPublicFunctionReturnExpectedFail {
    struct Counter {
        uint256 value;
    }

    Counter public counter;

    function getCounterRef() public view returns (Counter storage) {
        return counter; // should fail: storage not allowed in public return type
    }
}