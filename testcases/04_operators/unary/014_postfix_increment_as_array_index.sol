// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: postfix ++ used inside an index expression. The element at
// the OLD index is read, then the index advances.
// EXPECTED: readTwo() == (10, 20, 2).
contract PostfixIncrementAsArrayIndex {
    function readTwo() public pure returns (uint256, uint256, uint256) {
        uint256[] memory a = new uint256[](3);
        a[0] = 10;
        a[1] = 20;
        a[2] = 30;
        uint256 i = 0;
        uint256 first = a[i++];
        uint256 second = a[i++];
        return (first, second, i);
    }
}
