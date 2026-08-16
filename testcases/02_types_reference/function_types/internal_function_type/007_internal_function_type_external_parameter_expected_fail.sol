// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- internal function types cannot be
// used as parameters or return values of PUBLIC/EXTERNAL functions,
// since a code-pointer-into-this-contract's-bytecode has no meaningful
// representation in the external ABI (ABI-encoded calls can only carry
// actual data, not raw code addresses).
// EXPECTED: compile error, internal or recursive type not allowed for
// public/external functions.
contract InternalFunctionTypeExternalParameterExpectedFail {
    function double(uint256 x) internal pure returns (uint256) {
        return x * 2;
    }

    function badExternalParam(function(uint256) internal pure returns (uint256) fn, uint256 x)
        public
        pure
        returns (uint256)
    {
        return fn(x); // should fail: internal function type not allowed in public signature
    }
}