// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MappingBasicAddressToUint {
    mapping(address => uint256) public balances;

    function setBalance(address account, uint256 amount) public {
        balances[account] = amount;
    }

    function getBalance(address account) public view returns (uint256) {
        return balances[account];
    }
}