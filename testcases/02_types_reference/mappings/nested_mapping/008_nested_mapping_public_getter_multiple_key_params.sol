// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirms the auto-generated public getter for a nested
// mapping takes ONE parameter PER nesting level (in outer-to-inner
// order), extending simple_mapping/009's single-parameter getter
// pattern to multiple levels.
contract NestedMappingPublicGetterMultipleKeyParams {
    mapping(address => mapping(address => uint256)) public allowances;

    function setup(address owner, address spender, uint256 amount) public {
        allowances[owner][spender] = amount;
    }

    // No explicit getter written -- `allowances(address, address)` is
    // auto-generated, taking owner then spender in that order.
}