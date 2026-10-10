// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: compound assignment on a storage state variable reads the
// slot, computes, and writes it back. Unlike locals, this touches
// storage.
contract CompoundAssignOnStateVariable {
    uint256 public total;
    uint8 public small;   // packed neighbour pattern for narrow types

    function add(uint256 v) public {
        total += v;
    }

    function sub(uint256 v) public {
        total -= v;
    }

    function bumpSmall(uint8 v) public {
        small += v;
    }
}