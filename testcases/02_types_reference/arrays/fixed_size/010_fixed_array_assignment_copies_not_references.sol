// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: assigning one memory array to another memory array variable
// COPIES the data (value semantics for the assignment itself), it does
// NOT create a reference/alias -- mutating the copy must not affect
// the original. This is a genuine correctness trap: reference types in
// many languages alias on assignment, but Solidity memory arrays copy
// on assignment between two memory locations.
contract FixedArrayAssignmentCopiesNotReferences {
    function testCopy() public pure returns (uint256, uint256) {
        uint256[3] memory original = [uint256(1), 2, 3];
        uint256[3] memory copy = original;
        copy[0] = 999; // mutating the copy...

        return (original[0], copy[0]); // ...should NOT affect original: expect (1, 999)
    }
}