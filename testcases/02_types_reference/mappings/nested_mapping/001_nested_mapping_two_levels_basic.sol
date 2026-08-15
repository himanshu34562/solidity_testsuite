// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: classic two-level nested mapping -- the canonical example
// is an ERC20-style allowance: owner -> spender -> amount.
contract NestedMappingTwoLevelsBasic {
    mapping(address => mapping(address => uint256)) public allowances;

    function approve(address owner, address spender, uint256 amount) public {
        allowances[owner][spender] = amount;
    }

    function getAllowance(address owner, address spender) public view returns (uint256) {
        return allowances[owner][spender];
    }
}