// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StructFieldAccessAndMutation {
    struct Counter {
        uint256 value;
    }

    Counter public counter;

    function increment() public {
        counter.value += 1; // direct field mutation via dot access
    }
}