// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: nested mapping where the innermost value type is a struct
// -- combines nested-mapping key chaining with struct field access at
// the end of the chain.
contract NestedMappingToStruct {
    struct Position {
        uint256 amount;
        uint256 timestamp;
    }

    mapping(address => mapping(uint256 => Position)) public positions;

    function openPosition(address account, uint256 positionId, uint256 amount, uint256 timestamp) public {
        positions[account][positionId] = Position({amount: amount, timestamp: timestamp});
    }

    function getPosition(address account, uint256 positionId) public view returns (uint256, uint256) {
        Position storage p = positions[account][positionId];
        return (p.amount, p.timestamp);
    }
}