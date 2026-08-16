// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a local variable referencing a state variable's struct/array/
// mapping content MUST explicitly say `storage` -- this is not
// inferred, and omitting it forces a (potentially expensive, and
// semantically different) memory COPY instead, which we've already
// established elsewhere in this suite. This file establishes the
// explicit-keyword requirement as its own dedicated subject.
contract StorageLocalVariableRequiresExplicitKeyword {
    struct Counter {
        uint256 value;
    }

    Counter public counter;

    function incrementViaExplicitStorage() public {
        Counter storage c = counter; // explicit `storage` -- aliases counter directly
        c.value += 1;
    }
}