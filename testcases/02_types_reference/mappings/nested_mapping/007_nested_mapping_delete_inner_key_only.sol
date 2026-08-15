// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: delete on a fully-indexed nested mapping entry resets only
// that specific (outer_key, inner_key) pair -- other spenders under
// the same owner, and the same spender under other owners, must be
// completely unaffected.
contract NestedMappingDeleteInnerKeyOnly {
    mapping(address => mapping(address => uint256)) public allowances;

    function approve(address owner, address spender, uint256 amount) public {
        allowances[owner][spender] = amount;
    }

    function revokeApproval(address owner, address spender) public {
        delete allowances[owner][spender]; // resets only this specific pair
    }
}