// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: same value-vs-reference lesson established for memory
// arrays (arrays/fixed_size/010), now confirmed for structs -- memory
// struct assignment COPIES the fields, it does not alias. Mutating the
// copy must not affect the original.
contract StructMemoryAssignmentCopiesNotReferences {
    struct Counter {
        uint256 value;
    }

    function testCopy() public pure returns (uint256, uint256) {
        Counter memory original = Counter({value: 100});
        Counter memory copy = original;
        copy.value = 999;

        return (original.value, copy.value); // expect (100, 999), original unaffected
    }
}