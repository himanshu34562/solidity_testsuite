// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: assigning one storage state array to another storage state
// array copies the elements. The two arrays stay independent afterwards.
// (Contrast with a local `storage` pointer, which aliases.)
contract StorageToStorageStateArrayCopy {
    uint256[] public a;
    uint256[] public b;

    function fill() public {
        a.push(1);
        a.push(2);
    }

    function copyAToB() public {
        b = a;        // storage -> storage: copy
    }

    function mutateA() public {
        a[0] = 100;   // b[0] is unaffected
    }
}