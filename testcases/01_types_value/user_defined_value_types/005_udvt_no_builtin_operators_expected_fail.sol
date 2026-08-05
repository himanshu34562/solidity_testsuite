// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- UDVTs do NOT automatically inherit
// arithmetic/comparison operators from their underlying type. Unlike a
// plain type alias, a UDVT is fully opaque unless operators are
// explicitly attached via `using ... for` with global functions
// (0.8.19+ user-defined operators, covered separately in
// 14_generics_reuse/operator_overloading_udvt/).
// EXPECTED: compile error -- operator + not available for type TokenAmount.
type TokenAmount is uint256;

contract UdvtNoBuiltinOperatorsExpectedFail {
    function addDirectly(TokenAmount a, TokenAmount b) public pure returns (TokenAmount) {
        return a + b; // should fail: no + operator defined on TokenAmount
    }
}