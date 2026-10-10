// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: assigning a storage struct to a memory struct variable
// copies all fields. Mutating the memory copy leaves storage unchanged.
contract StorageStructToMemoryCopy {
    struct Point {
        uint256 x;
        uint256 y;
    }

    Point public stored = Point(1, 2);

    function copyOut() public view returns (uint256, uint256) {
        Point memory m = stored;   // storage -> memory: copy
        m.x = 99;
        return (m.x, stored.x);    // (99, 1)
    }
}