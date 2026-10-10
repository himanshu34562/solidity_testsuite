// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a reference-type parameter must
// state its data location explicitly. Leaving the keyword out is an
// error, even on an internal function where `storage` would be the
// only sensible choice.
// EXPECTED: compile error, data location must be given for the
// parameter.
contract StorageParamMissingLocationExpectedFail {
    uint256[] public data;

    function f(uint256[] arr) internal {   // should fail to compile
        arr.push(1);
    }

    function run() public {
        f(data);
    }
}