// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: mapping to a struct that ITSELF contains a dynamic array
// field -- three-way composition (mapping's key-derived region, the
// struct's field layout within that region, and the array field's own
// further-derived region nested inside that).
contract MappingToStructContainingArray {
    struct Wallet {
        uint256 balance;
        uint256[] transactionIds;
    }

    mapping(address => Wallet) public wallets;

    function deposit(address user, uint256 amount) public {
        wallets[user].balance += amount;
    }

    function recordTransaction(address user, uint256 txId) public {
        wallets[user].transactionIds.push(txId);
    }

    function getTransactionCount(address user) public view returns (uint256) {
        return wallets[user].transactionIds.length;
    }
}