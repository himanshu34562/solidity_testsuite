// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a storage reference can be passed AS A PARAMETER to another
// internal function, and mutations inside that function are visible
// to the caller -- confirms storage references genuinely propagate
// through internal call chains, not just direct local-variable usage.
contract StorageReferencePassedToInternalFunction {
    struct Counter {
        uint256 value;
    }

    Counter public counter;

    function incrementHelper(Counter storage c) internal {
        c.value += 1;
    }

    function incrementCounter() public {
        incrementHelper(counter); // implicitly passes a storage reference
    }
}