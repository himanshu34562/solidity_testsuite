// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a storage array cannot be passed
// directly to an internal function whose parameter is `calldata`, for
// the same reason as 012: storage data cannot be viewed as calldata.
// EXPECTED: compile error, invalid implicit conversion from storage
// array to calldata array.
contract StorageToCalldataInternalParameterExpectedFail {
    uint256[] public data;

    function takesCalldata(uint256[] calldata c) internal pure returns (uint256) {
        return c.length;
    }

    function f() public view returns (uint256) {
        return takesCalldata(data);   // should fail to compile
    }
}