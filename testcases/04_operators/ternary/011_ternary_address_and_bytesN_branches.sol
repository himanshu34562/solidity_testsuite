// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: ?: works on address and fixed-size byte array branches,
// including the common "fall back to the zero address" form.
contract TernaryAddressAndBytesNBranches {
    function pickAddr(bool c, address a, address b) public pure returns (address) {
        return c ? a : b;
    }

    function pickBytes(bool c, bytes32 a, bytes32 b) public pure returns (bytes32) {
        return c ? a : b;
    }

    function orZero(bool c, address a) public pure returns (address) {
        return c ? a : address(0);
    }
}
