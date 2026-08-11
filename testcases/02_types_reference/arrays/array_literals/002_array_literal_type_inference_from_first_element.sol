// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: array literals infer their element type from the values
// themselves using the same "smallest type that fits everything"
// inference rule established for scalar literals
// (01_types_value/literals/integer_literals/005) -- but applied across
// ALL elements collectively, not per-element independently.
contract ArrayLiteralTypeInferenceFromFirstElement {
    function getInferredArray() public pure returns (uint8[3] memory) {
        return [10, 20, 30]; // all fit uint8, inferred as uint8[3]
    }
}