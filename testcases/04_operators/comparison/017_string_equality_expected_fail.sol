// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- strings cannot be compared with ==.
// Compare keccak256 hashes instead (see 013).
// EXPECTED: compile error, operator == not compatible with types string
// memory and string memory.
contract StringEqualityExpectedFail {
    function f(string memory a, string memory b) public pure returns (bool) {
        return a == b;   // should fail to compile
    }
}
