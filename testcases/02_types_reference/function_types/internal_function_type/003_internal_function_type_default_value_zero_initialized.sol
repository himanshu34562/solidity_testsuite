// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: an uninitialized internal function type variable is
// "zero-initialized" -- it does not point at any valid function.
// NOTE: there is no valid syntax to construct a literal
// zero-function-pointer for direct comparison (confirmed via solc:
// `function(...)(0)` produces "Expected primary expression"). The
// only way to actually observe an unset function pointer's behavior
// is to CALL it and expect the Panic(0x51) revert -- see 004.
contract InternalFunctionTypeDefaultValueZeroInitialized {
    function(uint256) internal pure returns (uint256) storedFn; // never assigned, zero-initialized

    function double(uint256 x) internal pure returns (uint256) {
        return x * 2;
    }

    function assignThenCheck(uint256 x) public returns (uint256) {
        storedFn = double; // once assigned, it's no longer zero-initialized
        return storedFn(x);
    }
}