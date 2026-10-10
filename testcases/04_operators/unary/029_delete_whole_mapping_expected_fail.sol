// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- a mapping cannot be deleted as a whole
// because its keys cannot be enumerated. Delete individual entries (see
// 021) instead.
// EXPECTED: compile error, unary operator delete cannot be applied to a
// mapping.
contract DeleteWholeMappingExpectedFail {
    mapping(uint256 => uint256) public m;

    function f() public {
        delete m;   // should fail to compile
    }
}
