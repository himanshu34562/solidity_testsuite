// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unchecked does NOT disable the division-by-zero check. / and
// % by a runtime zero still revert with Panic(0x12) inside an unchecked
// block. Compiles fine because the divisor is not a constant.
// EXPECTED: divide(1, 0) and modulo(1, 0) revert with Panic(0x12).
contract UncheckedDivisionByZeroStillRevertsExpectedFailAtRuntime {
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        unchecked {
            return a / b;
        }
    }

    function modulo(uint256 a, uint256 b) public pure returns (uint256) {
        unchecked {
            return a % b;
        }
    }
}
