// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: indexing and member access bind tighter than unary operators,
// so -arr[i] negates the ELEMENT and !s.ok negates the FIELD.
// EXPECTED: negElement(0) == -5, notFlag(0) == false, negField() == -7,
// notField() == false.
contract UnaryAppliesAfterIndexAndMemberAccess {
    struct S {
        int256 x;
        bool ok;
    }

    int256[] public arr;
    bool[] public flags;
    S public s;

    constructor() {
        arr.push(5);
        flags.push(true);
        s = S(7, true);
    }

    function negElement(uint256 i) public view returns (int256) {
        return -arr[i];
    }

    function notFlag(uint256 i) public view returns (bool) {
        return !flags[i];
    }

    function negField() public view returns (int256) {
        return -s.x;
    }

    function notField() public view returns (bool) {
        return !s.ok;
    }
}
