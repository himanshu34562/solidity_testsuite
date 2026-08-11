// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: string as an element type inside a dynamic array -- this is
// a "dynamic type nested in a dynamic type," which has more involved
// ABI encoding / memory layout than either alone. Tests that the
// converter's array-of-strings handling is exercised at least minimally
// here before the full arrays/ folder covers it in depth.
contract StringArrayOfStrings {
    string[] public names;

    function addName(string memory name) public {
        names.push(name);
    }

    function getName(uint256 index) public view returns (string memory) {
        return names[index];
    }

    function count() public view returns (uint256) {
        return names.length;
    }
}