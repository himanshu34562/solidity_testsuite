// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- Solidity has no logical XOR operator
// (^^). On bool, a != b gives the same result (see comparison/008).
// EXPECTED: compile error (parse error) at the second ^ token.
contract LogicalXorOperatorDoesNotExistExpectedFail {
    function f(bool a, bool b) public pure returns (bool) {
        return a ^^ b;   // should fail to compile
    }
}
