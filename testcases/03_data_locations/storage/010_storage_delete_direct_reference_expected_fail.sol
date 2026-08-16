// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- delete cannot be applied directly to
// a storage pointer variable itself, only to a member/index expression
// reached through it (see 009 for the valid form).
// EXPECTED: compile error, "Built-in unary operator delete cannot be
// applied to type ... storage pointer".
contract StorageDeleteDirectReferenceExpectedFail {
    struct Counter {
        uint256 value;
    }

    Counter public counter;

    function badDelete() public {
        Counter storage ref = counter;
        delete ref; // should fail: cannot delete a storage pointer variable directly
    }
}