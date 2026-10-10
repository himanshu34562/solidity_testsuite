// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: deleting one element of a dynamic storage array resets that
// element to its default but does NOT change the length. Deleting the
// whole array sets its length to 0.
// EXPECTED: after clearElement(1): dyn == [1, 0, 3] (length 3);
// after clearAll(): length 0.
contract DeleteArrayElementAndDynamicArray {
    uint256[] public dyn;

    constructor() {
        dyn.push(1);
        dyn.push(2);
        dyn.push(3);
    }

    function clearElement(uint256 i) public {
        delete dyn[i];
    }

    function clearAll() public {
        delete dyn;
    }

    function length() public view returns (uint256) {
        return dyn.length;
    }
}
