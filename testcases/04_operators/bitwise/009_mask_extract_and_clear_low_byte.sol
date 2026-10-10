// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the standard masking idiom -- AND with a mask extracts bits,
// AND with the inverted mask clears them. Combines & with ~ on a typed
// constant.
// EXPECTED: lowByte(0x1234) == 0x34, clearLowByte(0x1234) == 0x1200.
contract MaskExtractAndClearLowByte {
    function lowByte(uint256 x) public pure returns (uint256) {
        return x & 0xFF;
    }

    function clearLowByte(uint256 x) public pure returns (uint256) {
        return x & ~uint256(0xFF);
    }
}