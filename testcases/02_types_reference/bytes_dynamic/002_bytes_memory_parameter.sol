// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BytesMemoryParameter {
    function echo(bytes memory b) public pure returns (bytes memory) {
        return b;
    }
}