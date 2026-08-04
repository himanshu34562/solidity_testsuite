// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: converting an out-of-range uint to an enum type must REVERT
// at runtime with Panic(0x21) ("invalid enum value").
// NOTE: solc performs this check at COMPILE TIME when the argument is a
// literal constant it can statically evaluate -- e.g. Status(4) as a
// literal is a compile ERROR ("Explicit type conversion not allowed"),
// not a runtime revert. To genuinely exercise the RUNTIME panic path,
// the value must come from a variable/parameter whose value isn't known
// until execution, as done below.
// EXPECTED: triggerInvalidEnum(4) reverts with Panic(0x21) at runtime,
// since 4 is out of range for a 4-member enum (valid values are 0-3).
contract EnumOutOfRangeConversionRevert {
    enum Status { Pending, Active, Completed, Cancelled }

    function toEnum(uint8 u) public pure returns (Status) {
        return Status(u);
    }

    function triggerInvalidEnum(uint8 u) public pure returns (Status) {
        return Status(u); // reverts at runtime if u > 3
    }
}