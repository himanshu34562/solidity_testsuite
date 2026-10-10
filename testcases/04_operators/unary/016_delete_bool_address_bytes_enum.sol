// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: delete resets each value type to its default: bool to false,
// address to address(0), bytesN to all zero bytes, enum to its first
// member.
// EXPECTED: after resetAll(): flag == false, owner == address(0),
// tag == bytes32(0), color == Color.Red.
contract DeleteBoolAddressBytesEnum {
    enum Color { Red, Green, Blue }

    bool public flag = true;
    address public owner = address(1);
    bytes32 public tag = bytes32(uint256(1));
    Color public color = Color.Blue;

    function resetAll() public {
        delete flag;
        delete owner;
        delete tag;
        delete color;
    }
}
