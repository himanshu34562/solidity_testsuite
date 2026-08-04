// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EnumBasic {
    enum Status { Pending, Active, Completed, Cancelled }

    Status public status = Status.Active;

    function setStatus(Status s) public {
        status = s;
    }

    function getStatus() public view returns (Status) {
        return status;
    }
}