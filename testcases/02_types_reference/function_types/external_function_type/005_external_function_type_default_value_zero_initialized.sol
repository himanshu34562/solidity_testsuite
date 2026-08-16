// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: an uninitialized external function type variable defaults
// to (address(0), 0x00000000) -- confirmed via .address and .selector
// both reading as their zero values, rather than needing a call-based
// revert check the way internal function types required (external
// function types CAN be inspected structurally without calling them,
// since .address/.selector are always safe to read).
contract ExternalFunctionTypeDefaultValueZeroInitialized {
    function(uint256) external pure returns (uint256) storedFn;

    function checkDefault() public view returns (address, bytes4) {
        return (storedFn.address, storedFn.selector); // expect (address(0), 0x00000000)
    }
}