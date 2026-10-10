// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: dynamic arrays and mappings always occupy their own
// dedicated base slot (used only to store length, for dynamic arrays,
// or left conceptually empty/unused directly, for mappings, since
// their real data lives in a derived region) -- they never pack
// alongside a small preceding variable, even if there'd be room.
contract DynamicArrayAndMappingAlwaysStartFreshSlot {
    bool public flag = true;               // slot 0
    uint256[] public dynamicArray;         // slot 1 -- own dedicated slot, stores length
    mapping(address => uint256) public m;  // slot 2 -- own dedicated (unused-directly) slot
    bool public anotherFlag = true;        // slot 3 -- does NOT pack back with anything above
}