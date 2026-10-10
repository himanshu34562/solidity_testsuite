// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a single element of a storage array of structs can be
// passed as a storage reference parameter; only that element is
// modified.
contract StorageStructArrayElementAsParam {
    struct Counter {
        uint256 count;
    }

    Counter[] public counters;

    constructor() {
        counters.push(Counter(0));
        counters.push(Counter(0));
    }

    function bump(Counter storage c) internal {
        c.count += 1;
    }

    function run() public {
        bump(counters[1]);   // only counters[1] changes
    }
}