// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: UDVT is not limited to uint256 as the underlying type --
// any value type is allowed (bool, address, bytesN, other uint/int
// widths). Tests that the converter's UDVT lowering is generic over
// the underlying type, not hardcoded to uint256.
type Flag is bool;
type Percentage is uint8;
type WalletAddress is address;

contract UdvtUnderlyingNonUint256Type {
    function wrapFlag(bool b) public pure returns (Flag) {
        return Flag.wrap(b);
    }

    function unwrapFlag(Flag f) public pure returns (bool) {
        return Flag.unwrap(f);
    }

    function wrapPercentage(uint8 p) public pure returns (Percentage) {
        return Percentage.wrap(p);
    }

    function wrapWalletAddress(address a) public pure returns (WalletAddress) {
        return WalletAddress.wrap(a);
    }
}