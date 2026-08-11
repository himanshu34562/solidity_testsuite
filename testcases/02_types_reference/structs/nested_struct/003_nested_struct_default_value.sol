// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm zero-initialization propagates correctly through
// nested struct fields -- every field at every nesting level defaults
// to its own zero value, composing recursively.
contract NestedStructDefaultValue {
    struct Inner {
        uint256 value;
        bool flag;
    }

    struct Outer {
        Inner inner;
        uint256 count;
    }

    Outer public defaultData;

    function getDefaults() public view returns (uint256, bool, uint256) {
        return (defaultData.inner.value, defaultData.inner.flag, defaultData.count);
        // should be (0, false, 0)
    }
}