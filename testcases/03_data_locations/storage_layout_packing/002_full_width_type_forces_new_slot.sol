// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a full 32-byte type (uint256) can never share a slot with
// anything -- it always starts a fresh slot, even if the immediately
// preceding small types left room in the current slot.
contract FullWidthTypeForcesNewSlot {
    bool public flag = true;        // slot 0, offset 0 (1 byte used, 31 free)
    uint256 public bigNum = 999;    // slot 1 -- does NOT use the 31 free bytes in slot 0
    bool public anotherFlag = true; // slot 2 -- bigNum filled all of slot 1
}