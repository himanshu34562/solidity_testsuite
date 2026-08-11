// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: an integer literal's type is inferred from context (the
// smallest type that fits at the usage site), NOT some fixed default
// like uint256 -- tests that the converter correctly narrows literal
// types per-usage rather than always widening to a single canonical type.
contract IntegerLiteralTypeInferenceSmallestFit {
    uint8 public smallValue = 200;    // literal must fit uint8 context
    uint256 public largeValue = 200;  // same literal, different context -- both valid

    function takesUint8(uint8 x) public pure returns (uint8) {
        return x;
    }

    function callWithLiteral() public pure returns (uint8) {
        return takesUint8(100); // literal inferred as uint8 here
    }
}