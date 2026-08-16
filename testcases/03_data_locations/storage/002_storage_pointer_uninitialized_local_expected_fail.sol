// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a LOCAL storage-pointer variable
// cannot be declared AND USED without initializing it from an
// existing storage location.
// CORRECTION: an earlier version of this file only declared the
// uninitialized pointer without using it, which solc accepts with
// just an "unused local variable" WARNING, not the error this file
// intends to test -- the restriction only triggers once the pointer
// is actually used (read or written through). Historically
// (pre-0.5.0), an uninitialized local storage pointer defaulted to
// slot 0, a real, dangerous class of bug (writes through it could
// silently corrupt slot 0 of the contract's own storage). Modern solc
// requires an initial value before the pointer can be used at all.
// EXPECTED: compile error referencing the uninitialized storage
// pointer / requiring an initial value.
contract StoragePointerUninitializedLocalExpectedFail {
    struct Counter {
        uint256 value;
    }

    function badLocalStorage() public {
        Counter storage c; // declared but not yet initialized
        c.value = 1; // should fail here: using it without initialization
    }
}