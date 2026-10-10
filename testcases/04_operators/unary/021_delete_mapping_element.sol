// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a single mapping entry can be deleted by key, resetting that
// entry to the value type's default. Other keys are unaffected.
// EXPECTED: after set(1, 5) and clear(1): m[1] == 0.
contract DeleteMappingElement {
    mapping(uint256 => uint256) public m;

    function set(uint256 k, uint256 v) public {
        m[k] = v;
    }

    function clear(uint256 k) public {
        delete m[k];
    }
}
