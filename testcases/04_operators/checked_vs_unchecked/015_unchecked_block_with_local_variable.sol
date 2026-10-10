// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: variables may be declared inside an unchecked block and used
// within it; the block has its own scope like any other block. Results
// are carried out through a variable declared outside.
// EXPECTED: f(200, 100) == 44.
contract UncheckedBlockWithLocalVariable {
    function f(uint8 a, uint8 b) public pure returns (uint8) {
        uint8 r;
        unchecked {
            uint8 t = a + b;
            r = t;
        }
        return r;
    }
}
