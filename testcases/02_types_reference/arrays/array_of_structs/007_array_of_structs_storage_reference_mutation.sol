// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: obtaining a storage reference to a struct WITHIN an array
// element and mutating it directly through that reference -- confirms
// the reference genuinely aliases the underlying storage slot (unlike
// memory array assignment, which copies -- see fixed_size/010),
// consistent with storage struct references generally being aliases,
// not copies.
contract ArrayOfStructsStorageReferenceMutation {
    struct Counter {
        uint256 count;
    }

    Counter[] public counters;

    function addCounter() public {
        counters.push(Counter({count: 0}));
    }

    function incrementViaReference(uint256 index) public {
        Counter storage c = counters[index]; // storage reference, not a copy
        c.count += 1; // mutates the actual array element in place
    }

    function getCount(uint256 index) public view returns (uint256) {
        return counters[index].count;
    }
}