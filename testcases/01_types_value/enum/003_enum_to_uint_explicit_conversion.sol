// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: explicit conversion from enum to its underlying integer
// ordinal value. Solidity picks the SMALLEST uint type that fits all
// members (uint8 here, since 4 members fit in uint8's range) -- worth
// confirming the converter matches solc's exact width-selection logic
// rather than always defaulting to uint256.
contract EnumToUintExplicitConversion {
    enum Status { Pending, Active, Completed, Cancelled }

    function toUint(Status s) public pure returns (uint8) {
        return uint8(s);
    }
}