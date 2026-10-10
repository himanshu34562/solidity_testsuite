// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- same restriction as 010 for
// `external` functions: a storage reference cannot cross the external
// ABI boundary.
// EXPECTED: compile error, the data location of an external function's
// parameter must be calldata, not storage.
contract StorageParamOnExternalFunctionExpectedFail {
    uint256[] public data;

    function f(uint256[] storage arr) external {   // should fail to compile
        arr.push(1);
    }
}