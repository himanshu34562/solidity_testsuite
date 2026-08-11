// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: memory-to-memory struct assignment copies DEEPLY, not just
// the outer struct's immediate fields -- mutating a nested field on
// the copy must not affect the corresponding nested field on the
// original. This extends the copy-semantics lesson from
// simple_struct/009 to confirm it applies recursively through nesting,
// not just at the top level.
contract NestedStructCopySemanticsDeep {
    struct Inner {
        uint256 value;
    }

    struct Outer {
        Inner inner;
    }

    function testDeepCopy() public pure returns (uint256, uint256) {
        Outer memory original = Outer({inner: Inner({value: 100})});
        Outer memory copy = original;
        copy.inner.value = 999; // mutate nested field on the copy

        return (original.inner.value, copy.inner.value); // expect (100, 999)
    }
}