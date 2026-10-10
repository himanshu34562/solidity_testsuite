// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: short-circuiting protects an out-of-bounds array read. The
// right operand would revert with Panic(0x32) for i >= length, but it is
// only evaluated when the bounds check on the left succeeds.
// EXPECTED: contains(5, 5) == false with no revert, contains(0, 5) == true.
contract ShortCircuitGuardsArrayBounds {
    uint256[] public items;

    constructor() {
        items.push(5);
        items.push(7);
    }

    function contains(uint256 i, uint256 x) public view returns (bool) {
        return i < items.length && items[i] == x;
    }
}
