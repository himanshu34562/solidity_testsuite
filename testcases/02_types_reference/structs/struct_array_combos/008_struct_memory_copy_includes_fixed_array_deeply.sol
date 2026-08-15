// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: memory-to-memory copy semantics (established in
// simple_struct/009 and nested_struct/009) extended to a struct
// containing a FIXED array field -- mutating the array field on a
// copy must not affect the original's array field.
contract StructMemoryCopyIncludesFixedArrayDeeply {
    struct Data {
        uint256[3] values;
    }

    function testCopy() public pure returns (uint256, uint256) {
        Data memory original = Data({values: [uint256(1), 2, 3]});
        Data memory copy = original;
        copy.values[0] = 999;

        return (original.values[0], copy.values[0]); // expect (1, 999)
    }
}