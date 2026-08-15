// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a struct containing a FIXED-size array field -- since the
// array's size is baked into the type, this field has a bounded,
// predictable size, unlike a dynamic array field (covered next).
// NOTE: `board` is private, not public -- a struct whose ONLY field is
// an array is rejected by solc for `public` state variables with:
// "The struct has all its members omitted, therefore the getter cannot
// return any values." Array (and mapping) fields are always omitted
// from a struct's auto-generated getter; if that leaves nothing to
// return, the getter itself is invalid. See struct_array_combos/002
// for a struct that mixes an array field with a non-array field,
// which compiles fine as public since the getter still has something
// to return.
contract StructWithFixedArrayField {
    struct Scoreboard {
        uint256[3] topScores;
    }

    Scoreboard private board;

    function setScores(uint256 a, uint256 b, uint256 c) public {
        board.topScores = [a, b, c];
    }

    function getScore(uint256 index) public view returns (uint256) {
        return board.topScores[index];
    }
}