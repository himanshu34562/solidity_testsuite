// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: string as a memory-located function parameter -- the most
// common calling convention for public/external functions that accept
// arbitrary caller-supplied string data.
contract StringMemoryParameter {
    function echo(string memory s) public pure returns (string memory) {
        return s;
    }
}