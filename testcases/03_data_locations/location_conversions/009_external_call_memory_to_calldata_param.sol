// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a memory array cannot be passed to an INTERNAL function
// with a calldata parameter (see 012), but it CAN be passed through an
// EXTERNAL call (`this.f(...)`), because the argument is ABI-encoded
// into calldata for the call. The external call boundary is what makes
// the memory -> calldata conversion legal.
contract ExternalCallMemoryToCalldataParam {
    function sum(uint256[] calldata arr) external pure returns (uint256 total) {
        for (uint256 i = 0; i < arr.length; i++) {
            total += arr[i];
        }
    }

    function callWithMemory() public view returns (uint256) {
        uint256[] memory m = new uint256[](3);
        m[0] = 1;
        m[1] = 2;
        m[2] = 3;
        return this.sum(m);   // memory is ABI-encoded into calldata
    }
}