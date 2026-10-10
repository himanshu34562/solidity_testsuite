// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: prefix unary operators (~, !, -) bind tighter than every
// binary operator, so ~a & b means (~a) & b, !a && b means (!a) && b
// and -a + b means (-a) + b.
// EXPECTED: with a=0xF0, b=0xFF: bitNot == 0x0F, bitNotWrong == ~0xF0 (all
// high bits set); logicalNot(false, true) == true; negThenAdd(3, 10) == 7.
contract UnaryBindsTighterThanBinary {
    function bitNot(uint256 a, uint256 b) public pure returns (uint256) {
        return ~a & b;
    }

    function bitNotWrong(uint256 a, uint256 b) public pure returns (uint256) {
        return ~(a & b);
    }

    function logicalNot(bool a, bool b) public pure returns (bool) {
        return !a && b;
    }

    function negThenAdd(int256 a, int256 b) public pure returns (int256) {
        return -a + b;
    }
}
