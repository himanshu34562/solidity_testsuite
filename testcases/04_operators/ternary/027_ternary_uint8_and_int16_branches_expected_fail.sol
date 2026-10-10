// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a uint8 branch paired with an int16
// branch is rejected, even though a uint8 value assigns to int16
// implicitly everywhere else. The branches of ?: do not get the same
// signed/unsigned widening as plain assignment, so mixing signedness
// across branches is rejected whatever the widths. Same-signedness
// widening (uint8 with uint16, int8 with int16) is fine -- see 005.
// EXPECTED: compile error (observed with solc 0.8.36).
contract TernaryUint8AndInt16BranchesExpectedFail {
    function mixedSign(bool c, uint8 a, int16 b) public pure returns (int16) {
        return c ? a : b;   // should fail to compile
    }
}
