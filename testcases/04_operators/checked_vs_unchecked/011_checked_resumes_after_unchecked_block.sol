// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unchecked applies only to the block. Arithmetic after the
// closing brace is checked again, even in the same function.
// EXPECTED: mixed(200, 100, 1, 1) == (44, 2),
// mixed(200, 100, 255, 1) reverts with Panic(0x11) at the second sum.
contract CheckedResumesAfterUncheckedBlock {
    function mixed(uint8 a, uint8 b, uint8 c, uint8 d) public pure returns (uint8, uint8) {
        uint8 x;
        unchecked {
            x = a + b;      // wraps
        }
        uint8 y = c + d;    // checked again
        return (x, y);
    }
}
