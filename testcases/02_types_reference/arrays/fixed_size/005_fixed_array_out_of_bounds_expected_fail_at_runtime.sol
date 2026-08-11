// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: out-of-bounds index access on a fixed array reverts at
// RUNTIME with Panic(0x32) ("array out-of-bounds access") when the
// index is NOT a compile-time-provable constant (e.g. comes from a
// function parameter). This file should compile successfully -- the
// revert only happens if getAt() is actually CALLED with index >= 3;
// compilation itself succeeds since solc cannot statically evaluate
// a parameter's value.
// NOTE: an earlier version of this file also included a function with
// a literal out-of-bounds access (data[3]) directly, expecting it to
// only fail at runtime -- but solc statically evaluates literal
// indices and rejects them at COMPILE TIME instead (confirmed: same
// "Out of bounds array access" error as file 006). That case has been
// moved to 006 where it belongs; this file now tests ONLY the genuine
// runtime-only path via a parameterized index.
contract FixedArrayOutOfBoundsExpectedFailAtRuntime {
    uint256[3] public data;

    function getAt(uint256 index) public view returns (uint256) {
        return data[index]; // reverts with Panic(0x32) if index >= 3, but only at runtime
    }
}