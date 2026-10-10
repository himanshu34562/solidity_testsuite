// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: ?: works on enum branches of the same enum type.
// EXPECTED: pick(true) == Status.Active, pick(false) == Status.Closed.
contract TernaryEnumBranches {
    enum Status { Pending, Active, Closed }

    function pick(bool c) public pure returns (Status) {
        return c ? Status.Active : Status.Closed;
    }

    function next(Status s) public pure returns (Status) {
        return s == Status.Pending ? Status.Active : Status.Closed;
    }
}
