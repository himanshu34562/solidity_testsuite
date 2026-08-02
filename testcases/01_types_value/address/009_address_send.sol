// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: .send() sends value and returns a bool indicating success
// instead of auto-reverting -- caller must check the return value
// explicitly, or silent failure occurs. Also forwards a fixed 2300 gas
// stipend, same as transfer.
contract AddressSend {
    function sendViaSend(address payable recipient) public payable returns (bool) {
        bool success = recipient.send(msg.value);
        return success;
    }
}