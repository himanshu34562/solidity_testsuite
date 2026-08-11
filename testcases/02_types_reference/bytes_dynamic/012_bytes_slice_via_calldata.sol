// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: calldata bytes supports slicing (b[start:end]), a capability
// specific to calldata arrays/bytes -- NOT available on memory or
// storage bytes. This produces a calldata bytes slice, avoiding a copy.
contract BytesSliceViaCalldata {
    function slice(bytes calldata b, uint256 start, uint256 end) external pure returns (bytes memory) {
        return b[start:end];
    }
}