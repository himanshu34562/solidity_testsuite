// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: ++ on a mapping element. A missing key reads as 0, so the
// first increment yields 1 (prefix) or returns 0 (postfix).
// EXPECTED: hit(a) == 1 on first call, hitPost(a) returns the previous
// count.
contract IncrementOnMappingElement {
    mapping(address => uint256) public hits;

    function hit(address a) public returns (uint256) {
        return ++hits[a];
    }

    function hitPost(address a) public returns (uint256) {
        return hits[a]++;
    }
}
