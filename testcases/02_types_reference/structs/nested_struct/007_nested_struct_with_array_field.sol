// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a struct nested inside another struct, where the INNER
// struct itself contains a dynamic array field -- combines nested
// struct layout with dynamic-field layout concerns (related to
// arrays/array_of_structs/004's shape-encoding scenario, but with an
// extra struct nesting level on top).
contract NestedStructWithArrayField {
    struct Inventory {
        uint256[] itemIds;
    }

    struct Warehouse {
        string name;
        Inventory inventory;
    }

    Warehouse public warehouse;

    function setup(string memory name) public {
        warehouse.name = name;
    }

    function addItem(uint256 itemId) public {
        warehouse.inventory.itemIds.push(itemId);
    }

    function getItemCount() public view returns (uint256) {
        return warehouse.inventory.itemIds.length;
    }
}