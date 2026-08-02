// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: plain address -> address payable requires an EXPLICIT cast
// via payable(). This should fail to compile if attempted implicitly
// (see 005 for the negative case); this file is the correct/positive form.
contract AddressToPayableExplicitCast {
    function toPayable(address a) public pure returns (address payable) {
        return payable(a);
    }
}