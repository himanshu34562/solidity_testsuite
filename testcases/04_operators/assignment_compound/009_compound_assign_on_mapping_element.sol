// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: compound assignment on a mapping element. A missing key
// reads as the value type's default (zero), so += on a fresh key works
// without initialization.
contract CompoundAssignOnMappingElement {
    mapping(address => uint256) public balances;

    function credit(address to, uint256 v) public {
        balances[to] += v;
    }

    function debit(address from, uint256 v) public {
        balances[from] -= v;
    }
}