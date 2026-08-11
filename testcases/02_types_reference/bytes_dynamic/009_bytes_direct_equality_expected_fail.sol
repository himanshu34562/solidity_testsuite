// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- despite supporting .length and
// indexing (unlike string), dynamic bytes memory STILL has no native
// == operator. This is a genuinely easy assumption to get wrong: it's
// tempting to assume "bytes is more capable than string" uniformly,
// but equality is a capability BOTH lack, requiring the same
// keccak256-hash workaround either way.
// EXPECTED: compile error, operator == not compatible with types
// "bytes memory" and "bytes memory".
contract BytesDirectEqualityExpectedFail {
    function isEqual(bytes memory a, bytes memory b) public pure returns (bool) {
        return a == b; // should fail
    }
}