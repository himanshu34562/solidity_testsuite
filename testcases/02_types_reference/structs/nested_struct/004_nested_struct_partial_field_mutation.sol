// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: mutating only ONE field deep within a nested struct must
// leave all sibling fields (at every level) completely untouched --
// tests that the converter's field-write codegen correctly targets
// just the specific storage slot/offset for that one field, not
// something broader like rewriting the whole containing struct.
contract NestedStructPartialFieldMutation {
    struct Inner {
        uint256 a;
        uint256 b;
    }

    struct Outer {
        Inner inner;
        uint256 c;
    }

    Outer public data;

    function setup() public {
        data = Outer({inner: Inner({a: 1, b: 2}), c: 3});
    }

    function mutateOnlyA(uint256 newA) public {
        data.inner.a = newA; // only this field should change
    }

    function getAll() public view returns (uint256, uint256, uint256) {
        return (data.inner.a, data.inner.b, data.c); // fixed: c is on Outer, not Inner
    }
}