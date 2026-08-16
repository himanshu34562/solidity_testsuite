// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a local storage-pointer variable, once validly initialized,
// CAN be reassigned to point at a DIFFERENT storage location later in
// the same function -- it's a genuine pointer/reference, not bound
// permanently to its initial target.
contract StorageReferenceReassignment {
    struct Counter {
        uint256 value;
    }

    Counter public counterA;
    Counter public counterB;

    function incrementConditional(bool useA) public {
        Counter storage target = useA ? counterA : counterB; // ternary selects which storage location, still valid
        target.value += 1;
    }

    function reassignMidFunction() public {
        Counter storage target = counterA;
        target.value += 1; // affects counterA
        target = counterB; // reassign the pointer itself
        target.value += 1; // now affects counterB
    }
}