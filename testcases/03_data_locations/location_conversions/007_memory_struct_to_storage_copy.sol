// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: assigning a memory struct to a storage struct variable
// copies all fields into storage. Also covers pushing a memory struct
// into a storage array of structs.
contract MemoryStructToStorageCopy {
    struct Point {
        uint256 x;
        uint256 y;
    }

    Point public stored;
    Point[] public points;

    function copyIn() public {
        Point memory m = Point(5, 6);
        stored = m;         // memory -> storage: copy
        points.push(m);     // memory -> storage array element: copy
        m.x = 99;           // neither storage copy is affected
    }
}