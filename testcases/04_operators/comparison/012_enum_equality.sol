// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: enum values can be compared with == and != against other
// values of the same enum or against enum members.
contract EnumEquality {
    enum Status { Pending, Active, Closed }

    function isActive(Status s) public pure returns (bool) {
        return s == Status.Active;
    }

    function notClosed(Status s) public pure returns (bool) {
        return s != Status.Closed;
    }

    function same(Status a, Status b) public pure returns (bool) {
        return a == b;
    }
}
