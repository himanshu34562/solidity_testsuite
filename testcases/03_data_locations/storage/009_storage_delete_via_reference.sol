// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: `delete` cannot be applied directly to a storage POINTER
// variable itself (confirmed via solc: "Built-in unary operator delete
// cannot be applied to type ... storage pointer") -- this would be
// ambiguous (delete the underlying data, or unset the pointer?).
// Solidity avoids the ambiguity by disallowing it outright. delete
// DOES work correctly on a MEMBER ACCESS reached through a reference
// (ref.value), since that unambiguously targets the underlying data,
// not the pointer variable.
contract StorageDeleteViaReference {
    struct Counter {
        uint256 value;
    }

    Counter public counter;

    function setupAndClear() public {
        counter.value = 100;
        Counter storage ref = counter;
        delete ref.value; // valid: deletes through a member access reached via the reference
    }

    function getValue() public view returns (uint256) {
        return counter.value; // should be 0 after setupAndClear()
    }
}