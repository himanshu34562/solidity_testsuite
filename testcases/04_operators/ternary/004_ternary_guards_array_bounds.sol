// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the unselected branch's out-of-bounds array read (Panic 0x32)
// never happens when the bounds check selects the default value.
// EXPECTED: at(5) == 0 with no revert, at(0) == 5.
contract TernaryGuardsArrayBounds {
    uint256[] public items;

    constructor() {
        items.push(5);
        items.push(7);
    }

    function at(uint256 i) public view returns (uint256) {
        return i < items.length ? items[i] : 0;
    }
}
