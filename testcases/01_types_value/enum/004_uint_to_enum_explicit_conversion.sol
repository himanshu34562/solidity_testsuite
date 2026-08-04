// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: explicit conversion from uint back to enum. This requires
// a RUNTIME range check -- values outside [0, memberCount) must revert,
// since not every uint8 value corresponds to a valid enum member.
contract UintToEnumExplicitConversion {
    enum Status { Pending, Active, Completed, Cancelled } // 4 members: valid range 0-3

    function toEnum(uint8 u) public pure returns (Status) {
        return Status(u);
    }
}