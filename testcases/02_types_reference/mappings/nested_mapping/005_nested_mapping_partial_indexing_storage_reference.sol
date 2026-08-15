// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: indexing a nested mapping with only the OUTER key yields a
// storage reference to the entire inner mapping -- this reference can
// itself be stored in a local variable and reused, avoiding
// re-deriving the outer key's storage slot on every subsequent access.
contract NestedMappingPartialIndexingStorageReference {
    mapping(address => mapping(address => uint256)) public allowances;

    function approveMultiple(address owner, address spenderA, uint256 amountA, address spenderB, uint256 amountB) public {
        mapping(address => uint256) storage ownerAllowances = allowances[owner]; // partial indexing: storage ref to inner mapping
        ownerAllowances[spenderA] = amountA;
        ownerAllowances[spenderB] = amountB;
    }
}