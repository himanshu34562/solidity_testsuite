// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DynamicArrayOfStructsBasic {
    struct Item {
        uint256 id;
        uint256 quantity;
    }

    Item[] public items;

    function addItem(uint256 id, uint256 quantity) public {
        items.push(Item({id: id, quantity: quantity}));
    }

    function getItem(uint256 index) public view returns (uint256, uint256) {
        Item storage item = items[index];
        return (item.id, item.quantity);
    }
}