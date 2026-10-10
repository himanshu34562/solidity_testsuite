// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: deleting a fixed-size storage array resets EVERY element to
// the default; the length is fixed and unchanged.
// EXPECTED: after clear(): all three elements are 0.
contract DeleteFixedArrayResetsAllElements {
    uint256[3] public fixedArr;

    constructor() {
        fixedArr[0] = 1;
        fixedArr[1] = 2;
        fixedArr[2] = 3;
    }

    function clear() public {
        delete fixedArr;
    }
}
