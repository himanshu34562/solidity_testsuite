// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: TWO separate local storage-pointer variables, both
// initialized from the SAME underlying storage location, must alias
// each other -- a mutation through one is visible through the other,
// since both are just references to the identical underlying slot(s),
// not independent copies.
contract StorageMultipleReferencesAliasSameData {
    struct Counter {
        uint256 value;
    }

    Counter public counter;

    function testAliasing() public returns (uint256, uint256) {
        Counter storage ref1 = counter;
        Counter storage ref2 = counter;

        ref1.value = 42;

        return (ref1.value, ref2.value); // expect (42, 42) -- both see the same mutation
    }
}