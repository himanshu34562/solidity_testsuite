// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: delete on a struct state variable resets ALL fields to
// their zero values in place -- same delete semantics established for
// array elements (array_of_structs/008), now confirmed for a
// standalone struct.
contract StructDeleteResetsAllFields {
    struct Account {
        uint256 balance;
        bool active;
    }

    Account public account;

    function setup() public {
        account = Account({balance: 100, active: true});
    }

    function clear() public {
        delete account; // resets both fields to (0, false)
    }
}