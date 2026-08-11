// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: .pop() on an already-empty dynamic array reverts at runtime
// with Panic(0x31) ("pop on empty array") -- a distinct panic code
// from out-of-bounds access (0x32) or overflow (0x11). This compiles
// successfully; the revert is purely a runtime behavior triggered by
// actually calling popEmpty() on an empty array.
contract DynamicArrayPopEmptyExpectedFailAtRuntime {
    uint256[] public data; // starts empty

    function popEmpty() public {
        data.pop(); // reverts with Panic(0x31) if data.length == 0
    }
}