// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a struct containing a DYNAMIC field (a nested dynamic array)
// inside an array -- this is genuinely the most complex memory/storage
// layout case covered so far. It directly matches the exact scenario
// described in the sol2bc bitcode-reference.md "shape" encoding example
// (Item[] items, where Item has a dynamic bytes32[] field) -- this file
// exists specifically to exercise that layout for whichever compiler
// consumes it downstream.
contract ArrayOfStructsWithDynamicField {
    struct Item {
        uint256 id;
        uint256 amount;
        bytes32[] tags;
    }

    Item[] public items;

    function addItem(uint256 id, uint256 amount) public {
        items.push();
        Item storage newItem = items[items.length - 1];
        newItem.id = id;
        newItem.amount = amount;
    }

    function addTag(uint256 itemIndex, bytes32 tag) public {
        items[itemIndex].tags.push(tag);
    }

    function getTagCount(uint256 itemIndex) public view returns (uint256) {
        return items[itemIndex].tags.length;
    }
}