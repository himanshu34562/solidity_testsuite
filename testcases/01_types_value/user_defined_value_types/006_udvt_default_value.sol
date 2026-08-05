// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm uninitialized UDVT defaults to the zero value of its
// underlying type, wrapped -- same default-value codegen path as the
// underlying type itself.
type TokenAmount is uint256;

contract UdvtDefaultValue {
    TokenAmount public defaultAmount;

    function getDefault() public view returns (TokenAmount) {
        return defaultAmount;
    }

    function isZero() public view returns (bool) {
        return TokenAmount.unwrap(defaultAmount) == 0;
    }
}