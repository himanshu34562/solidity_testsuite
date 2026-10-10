// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: ++ and -- on a storage array element and on struct fields,
// including a narrow packed field.
contract IncrementOnArrayElementAndStructField {
    struct S {
        uint256 n;
        uint8 small;
    }

    uint256[] public items;
    S public s;

    constructor() {
        items.push(0);
        items.push(0);
    }

    function bumpElement(uint256 i) public {
        items[i]++;
    }

    function bumpField() public {
        s.n++;
        s.small++;
    }

    function decField() public {
        --s.n;
    }
}
