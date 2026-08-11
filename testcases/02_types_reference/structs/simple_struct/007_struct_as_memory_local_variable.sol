// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StructAsMemoryLocalVariable {
    struct Pair {
        uint256 first;
        uint256 second;
    }

    function buildPair(uint256 a, uint256 b) public pure returns (uint256, uint256) {
        Pair memory p = Pair({first: a, second: b});
        return (p.first, p.second);
    }
}