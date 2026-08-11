// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: CONTRAST with 009 -- a storage struct reference DOES alias
// the underlying storage, same lesson established in
// arrays/array_of_structs/007, now confirmed for a standalone
// (non-array-nested) struct state variable directly.
contract StructStorageReferenceAliases {
    struct Counter {
        uint256 value;
    }

    Counter public counter;

    function incrementViaReference() public {
        Counter storage c = counter; // storage reference, aliases the actual state variable
        c.value += 1; // mutates counter.value directly through the alias
    }
}