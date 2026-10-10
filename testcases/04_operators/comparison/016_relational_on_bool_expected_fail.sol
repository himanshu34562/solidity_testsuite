// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- bool supports only == and !=;
// relational operators do not apply.
// EXPECTED: compile error, operator < not compatible with types bool
// and bool.
contract RelationalOnBoolExpectedFail {
    function f(bool a, bool b) public pure returns (bool) {
        return a < b;   // should fail to compile
    }
}
