// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: .transfer() sends value and REVERTS automatically on failure
// (forwards a fixed 2300 gas stipend). This is the strictest of the
// three send mechanisms.
contract AddressTransfer {
    function sendViaTransfer(address payable recipient) public payable {
        recipient.transfer(msg.value);
    }
}