// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: fixed array state variable initialized directly with an
// array literal at declaration -- tests that the converter correctly
// lowers a literal-array initializer into the equivalent sequence of
// storage writes at contract construction.
contract FixedArrayLiteralInitialization {
    uint8[4] public values = [10, 20, 30, 40];

    function getValues() public view returns (uint8[4] memory) {
        return values;
    }
}