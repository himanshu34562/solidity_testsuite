// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: elements of a fixed-size array of a small type pack
// together within the array's own slot range, same packing rule
// applied element-by-element -- confirms multidimensional/009's
// finding holds for a simple 1D fixed array too, as its own
// dedicated case.
contract FixedArrayElementsPackWithinTheArray {
    uint8[4] public values; // all 4 elements (4 bytes) pack into a single slot

    function setAll(uint8 a, uint8 b, uint8 c, uint8 d) public {
        values = [a, b, c, d];
    }
}