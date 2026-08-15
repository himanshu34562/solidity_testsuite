// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: delete on a specific mapping key resets that key's value to
// the value type's zero/default -- consistent with delete's general
// "reset to default in place" semantics established for arrays and
// structs, applied here to a single mapping entry.
contract MappingDeleteResetsKeyToDefault {
    mapping(address => uint256) public balances;

    function setBalance(address account, uint256 amount) public {
        balances[account] = amount;
    }

    function clearBalance(address account) public {
        delete balances[account]; // resets this key's value to 0
    }
}