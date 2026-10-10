// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: multiplication overflow reverts by default in >=0.8.0. For
// uint256 this needs a wide-multiplication overflow check, which is
// non-trivial for a converter to lower.
// EXPECTED: mul(type(uint256).max, 2) reverts with Panic(0x11);
// mulSigned(type(int256).min, -1) reverts the same way.
contract MultiplicationOverflowChecked {
    function mul(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    function mulSigned(int256 a, int256 b) public pure returns (int256) {
        return a * b;
    }
}