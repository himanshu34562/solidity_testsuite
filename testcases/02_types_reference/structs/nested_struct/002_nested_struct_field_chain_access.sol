// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: chained field access through multiple nesting levels
// (a.b.c) -- confirms the converter correctly resolves a multi-hop
// storage/memory offset chain, not just a single level of indirection.
contract NestedStructFieldChainAccess {
    struct Inner {
        uint256 value;
    }

    struct Middle {
        Inner inner;
    }

    struct Outer {
        Middle middle;
    }

    Outer public data;

    function setValue(uint256 v) public {
        data.middle.inner.value = v; // three-level chained field mutation
    }

    function getValue() public view returns (uint256) {
        return data.middle.inner.value;
    }
}