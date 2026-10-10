// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a struct passed as an internal `storage` parameter is a
// reference to the original state variable; field writes inside the
// function modify the original struct in place.
contract StorageStructParamFieldMutation {
    struct Counter {
        uint256 count;
        bool active;
    }

    Counter public counter;

    function activate(Counter storage c) internal {
        c.count += 1;
        c.active = true;
    }

    function run() public {
        activate(counter);
    }
}