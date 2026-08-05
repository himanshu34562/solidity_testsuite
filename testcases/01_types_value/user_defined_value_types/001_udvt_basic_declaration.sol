// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: basic user-defined value type (UDVT), available since 0.8.8.
// `type Foo is uint256` creates a distinct, opaque type backed by
// uint256 -- it is NOT implicitly interchangeable with uint256 or with
// other UDVTs sharing the same underlying type.
type TokenAmount is uint256;

contract UdvtBasicDeclaration {
    TokenAmount public amount;

    function setAmount(TokenAmount a) public {
        amount = a;
    }

    function getAmount() public view returns (TokenAmount) {
        return amount;
    }
}