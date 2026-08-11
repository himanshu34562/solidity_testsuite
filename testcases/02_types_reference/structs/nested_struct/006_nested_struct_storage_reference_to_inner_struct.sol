// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: obtaining a storage reference to an INNER struct field
// specifically (not the outer struct) -- confirms partial/nested
// storage references alias correctly at whatever depth they're taken,
// consistent with the alias lesson from simple_struct/010, now one
// level deeper.
contract NestedStructStorageReferenceToInnerStruct {
    struct Inner {
        uint256 value;
    }

    struct Outer {
        Inner inner;
    }

    Outer public data;

    function incrementViaInnerReference() public {
        Inner storage innerRef = data.inner; // reference to the nested struct specifically
        innerRef.value += 1; // mutates data.inner.value through the alias
    }

    function getValue() public view returns (uint256) {
        return data.inner.value;
    }
}