// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: an array literal's inferred TYPE is always a fixed-size
// array matching its element count -- [1,2,3] has type uint8[3], not
// uint8[]. Assigning it to a dynamic array target requires it to be
// used in a context that allows the implicit fixed-to-dynamic
// conversion (e.g. as a function argument), it does not become dynamic
// on its own.
contract ArrayLiteralIsFixedSizeByDefault {
    function passLiteralToFixedParam(uint256[3] memory arr) public pure returns (uint256) {
        return arr[0] + arr[1] + arr[2];
    }

    function callWithLiteral() public pure returns (uint256) {
        return passLiteralToFixedParam([uint256(1), 2, 3]); // literal matches fixed-size param type directly
    }
}