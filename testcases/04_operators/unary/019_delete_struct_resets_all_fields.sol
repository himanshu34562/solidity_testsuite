// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: deleting a struct resets all of its fields to their defaults.
// EXPECTED: after reset(): p == (0, 0, false).
contract DeleteStructResetsAllFields {
    struct Point {
        uint256 x;
        uint256 y;
        bool active;
    }

    Point public p = Point(1, 2, true);

    function reset() public {
        delete p;
    }
}
