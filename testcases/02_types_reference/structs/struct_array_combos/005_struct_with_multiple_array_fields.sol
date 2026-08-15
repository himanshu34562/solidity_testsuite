// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a struct with TWO separate dynamic array fields -- confirms
// each array field gets its own independent keccak256-derived storage
// region (keyed by its own distinct base slot), not sharing or
// colliding with the other array field's region.
contract StructWithMultipleArrayFields {
    struct Ledger {
        uint256[] deposits;
        uint256[] withdrawals;
    }

    Ledger private ledger;

    function addDeposit(uint256 amount) public {
        ledger.deposits.push(amount);
    }

    function addWithdrawal(uint256 amount) public {
        ledger.withdrawals.push(amount);
    }

    function getCounts() public view returns (uint256, uint256) {
        return (ledger.deposits.length, ledger.withdrawals.length);
    }
}