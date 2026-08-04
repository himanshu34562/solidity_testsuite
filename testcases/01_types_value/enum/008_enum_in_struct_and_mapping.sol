// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: enum used as a struct field and as a mapping value type --
// tests that enum's storage representation (packed uint8 in this case)
// integrates correctly with other storage-layout codegen paths rather
// than being handled only in isolation.
contract EnumInStructAndMapping {
    enum Status { Pending, Active, Completed, Cancelled }

    struct Task {
        uint256 id;
        Status status;
    }

    mapping(uint256 => Status) public statusById;
    Task public currentTask;

    function setTaskStatus(Status s) public {
        currentTask.status = s;
    }

    function setStatusById(uint256 id, Status s) public {
        statusById[id] = s;
    }
}