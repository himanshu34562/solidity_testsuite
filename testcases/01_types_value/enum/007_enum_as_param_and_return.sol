// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EnumAsParamAndReturn {
    enum Status { Pending, Active, Completed, Cancelled }

    function advance(Status current) public pure returns (Status) {
        if (current == Status.Pending) return Status.Active;
        if (current == Status.Active) return Status.Completed;
        return Status.Cancelled;
    }
}