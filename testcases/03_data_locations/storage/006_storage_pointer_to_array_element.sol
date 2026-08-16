// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a storage pointer can reference a single ELEMENT within a
// larger storage array/mapping, not just a whole top-level state
// variable -- confirms storage references compose at any depth/
// granularity, consistent with what we relied on implicitly
// throughout arrays/ and mappings/, now tested as its own explicit case.
contract StoragePointerToArrayElement {
    struct Item {
        uint256 id;
        uint256 quantity;
    }

    Item[] public items;

    function addItem(uint256 id, uint256 quantity) public {
        items.push(Item({id: id, quantity: quantity}));
    }

    function updateQuantity(uint256 index, uint256 newQuantity) public {
        Item storage item = items[index]; // storage pointer to ONE array element
        item.quantity = newQuantity;
    }
}