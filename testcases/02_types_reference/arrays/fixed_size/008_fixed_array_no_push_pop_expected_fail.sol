// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- fixed-size arrays do NOT support
// .push()/.pop() (unlike dynamic arrays or storage bytes) since their
// length is fixed at the type level, not runtime-resizable.
// EXPECTED: compile error, "Member \"push\" not found or not visible
// after argument-dependent lookup in uint256[3] storage ref" (or similar).
contract FixedArrayNoPushPopExpectedFail {
    uint256[3] public data;

    function addValue(uint256 value) public {
        data.push(value); // should fail: fixed arrays have no push
    }
}