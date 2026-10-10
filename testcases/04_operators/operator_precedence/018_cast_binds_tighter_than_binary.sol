// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: an explicit conversion is a call-level operation, so it binds
// tighter than any binary operator. uint8(x) + y truncates x FIRST and
// then adds in the wider type, while uint8(x + y) adds first and then
// truncates.
// EXPECTED: castThenAdd(300, 300) == 344 (44 + 300),
// addThenCast(300, 300) == 88 (600 mod 256).
contract CastBindsTighterThanBinary {
    function castThenAdd(uint256 x, uint256 y) public pure returns (uint256) {
        return uint8(x) + y;
    }

    function addThenCast(uint256 x, uint256 y) public pure returns (uint8) {
        return uint8(x + y);
    }
}
