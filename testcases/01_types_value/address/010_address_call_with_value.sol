// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: .call{value: ...}("") is the recommended modern pattern --
// forwards ALL remaining gas (not just 2300), returns (bool, bytes),
// and does NOT auto-revert on failure. This is the most flexible and
// most commonly used of the three mechanisms in production code.
contract AddressCallWithValue {
    function sendViaCall(address payable recipient) public payable returns (bool, bytes memory) {
        (bool success, bytes memory data) = recipient.call{value: msg.value}("");
        return (success, data);
    }
}