// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm uninitialized enum defaults to the FIRST declared
// member (index 0), not to some sentinel/undefined value -- enums are
// stored as the underlying uint at their ordinal position.
contract EnumDefaultValue {
    enum Status { Pending, Active, Completed, Cancelled }

    Status public defaultStatus;

    function getDefault() public view returns (Status) {
        return defaultStatus; // should be Status.Pending (0)
    }

    function isDefaultPending() public view returns (bool) {
        return defaultStatus == Status.Pending;
    }
}