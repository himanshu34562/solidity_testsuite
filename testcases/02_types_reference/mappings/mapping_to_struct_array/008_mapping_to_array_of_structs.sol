// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the most compositionally complex fixture in this whole
// mappings/ category -- a mapping to a dynamic ARRAY of STRUCTS.
// Combines every storage-layout mechanism covered across arrays/,
// structs/, and mappings/ into a single field: mapping key derivation,
// dynamic array's own derived region, and struct field offsets within
// each array element.
contract MappingToArrayOfStructs {
    struct Order {
        uint256 id;
        uint256 amount;
    }

    mapping(address => Order[]) public userOrders;

    function placeOrder(address user, uint256 id, uint256 amount) public {
        userOrders[user].push(Order({id: id, amount: amount}));
    }

    function getOrderCount(address user) public view returns (uint256) {
        return userOrders[user].length;
    }

    function getOrder(address user, uint256 index) public view returns (uint256, uint256) {
        Order storage o = userOrders[user][index];
        return (o.id, o.amount);
    }
}