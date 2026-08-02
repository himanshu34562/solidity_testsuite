// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: classic signed-division edge case. type(int256).min / -1
// mathematically equals 2^255, which does NOT fit in int256 (max is
// 2^255 - 1). Solidity treats this as an overflow and reverts with
// Panic(0x11), even though no operand individually looks "too big".
// EXPECTED: divide() reverts when a == type(int256).min and b == -1.
// This is a genuinely tricky case for any Solidity->LLVM IR converter
// to get right, since naive signed-div lowering in LLVM does NOT
// include this check by default.
contract IntMinDividedByNegativeOne {
    function divide(int256 a, int256 b) public pure returns (int256) {
        return a / b;
    }

    function triggerEdgeCase() public pure returns (int256) {
        return type(int256).min / -1; // should revert
    }
}