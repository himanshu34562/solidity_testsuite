// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: compound assignment on a struct field and on an array
// element, both in storage. The index/field expression is evaluated
// once, then read-modify-written.
contract CompoundAssignOnStructFieldAndArrayElement {
    struct Counter {
        uint256 count;
        uint8 small;
    }

    Counter public counter;
    uint256[] public values;

    constructor() {
        values.push(0);
        values.push(0);
    }

    function bumpField() public {
        counter.count += 1;
        counter.small += 1;
    }

    function bumpElement(uint256 i) public {
        values[i] += 10;
    }
}