// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: exponentiation overflow reverts by default in >=0.8.0.
// EXPECTED: pow(2, 256) reverts with Panic(0x11); pow(2, 255) does not.
contract ExponentiationOverflowChecked {
    function pow(uint256 base, uint256 exp) public pure returns (uint256) {
        return base ** exp;
    }
}