// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: dynamic bytes supports read indexing (b[i] returns bytes1),
// another capability string lacks entirely.
contract BytesIndexingRead {
    function byteAt(bytes memory b, uint256 index) public pure returns (bytes1) {
        return b[index];
    }
}