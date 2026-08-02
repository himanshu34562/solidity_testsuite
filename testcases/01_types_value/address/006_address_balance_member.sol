// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AddressBalanceMember {
    function getBalance(address a) public view returns (uint256) {
        return a.balance;
    }

    function getThisBalance() public view returns (uint256) {
        return address(this).balance;
    }
}