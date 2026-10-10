// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a `storage` parameter is not allowed
// on a public function. Public functions are part of the ABI, and a
// raw storage reference has no ABI representation.
// EXPECTED: compile error, the data location of a public function's
// parameter must be memory or calldata, not storage.
contract StorageParamOnPublicFunctionExpectedFail {
    uint256[] public data;

    function f(uint256[] storage arr) public {   // should fail to compile
        arr.push(1);
    }
}