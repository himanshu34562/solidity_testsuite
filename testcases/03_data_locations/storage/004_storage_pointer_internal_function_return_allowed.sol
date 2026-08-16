// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: an INTERNAL function CAN return a storage pointer/reference
// -- since internal calls never cross the ABI boundary, there's no
// encoding problem, same underlying reasoning as internal function
// types being usable internally but not externally.
contract StoragePointerInternalFunctionReturnAllowed {
    struct Counter {
        uint256 value;
    }

    Counter public counterA;
    Counter public counterB;

    function selectCounter(bool useA) internal view returns (Counter storage) {
        return useA ? counterA : counterB;
    }

    function incrementSelected(bool useA) public {
        Counter storage c = selectCounter(useA);
        c.value += 1;
    }
}