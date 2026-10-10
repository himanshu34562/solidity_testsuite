// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: baseline packing case -- four small types declared
// sequentially (1+1+1+20 = 23 bytes) should all share slot 0, since
// they fit within one 32-byte slot together. Extends bool/007's
// finding into its own dedicated, thorough subject.
contract SequentialSmallTypesPackIntoOneSlot {
    bool public flagA = true;      // slot 0, offset 0
    uint8 public smallNum = 7;     // slot 0, offset 1
    bool public flagB = false;     // slot 0, offset 2
    address public addr = address(0x1234567890123456789012345678901234567890); // slot 0, offset 3
}