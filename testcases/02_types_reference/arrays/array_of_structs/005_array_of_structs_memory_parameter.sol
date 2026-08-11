// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: array of structs passed as a memory function parameter --
// requires ABI Coder v2 encoding (default since 0.8.0), distinct
// calling convention from a simple scalar array parameter.
contract ArrayOfStructsMemoryParameter {
    struct Pair {
        uint256 key;
        uint256 value;
    }

    function sumValues(Pair[] memory pairs) public pure returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < pairs.length; i++) {
            total += pairs[i].value;
        }
        return total;
    }
}