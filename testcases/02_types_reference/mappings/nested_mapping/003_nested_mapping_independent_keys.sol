// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirms different outer keys produce genuinely INDEPENDENT
// inner mappings -- setting allowances[A][spender] must not affect
// allowances[B][spender] for a different owner A != B, even though
// both inner mappings are conceptually "the same shape." This is the
// key correctness property of the keccak256-chained storage-slot
// derivation: each distinct (outer_key, inner_key) pair must resolve
// to a genuinely distinct storage slot.
contract NestedMappingIndependentKeys {
    mapping(address => mapping(address => uint256)) public allowances;

    function approve(address owner, address spender, uint256 amount) public {
        allowances[owner][spender] = amount;
    }

    function getAllowance(address owner, address spender) public view returns (uint256) {
        return allowances[owner][spender];
    }
}