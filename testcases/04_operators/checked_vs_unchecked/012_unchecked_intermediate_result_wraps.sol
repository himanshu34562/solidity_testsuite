// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: inside an unchecked block even INTERMEDIATE results wrap, so
// (a + b) - b recovers a by modular arithmetic. In checked context the
// intermediate overflow reverts before the subtraction happens.
// EXPECTED: recoverUnchecked(200, 100) == 200,
// recoverChecked(200, 100) reverts with Panic(0x11),
// recoverChecked(10, 20) == 10.
contract UncheckedIntermediateResultWraps {
    function recoverChecked(uint8 a, uint8 b) public pure returns (uint8) {
        return (a + b) - b;
    }

    function recoverUnchecked(uint8 a, uint8 b) public pure returns (uint8) {
        unchecked {
            return (a + b) - b;
        }
    }
}
