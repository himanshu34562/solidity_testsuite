// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm an uninitialized struct state variable defaults to
// all fields being their own type's zero value -- same
// zero-initialization guarantee, applied field-by-field across mixed
// field types.
contract StructDefaultValue {
    struct Account {
        uint256 balance;
        bool active;
        address owner;
    }

    Account public defaultAccount;

    function getDefaults() public view returns (uint256, bool, address) {
        return (defaultAccount.balance, defaultAccount.active, defaultAccount.owner);
        // should be (0, false, address(0))
    }
}