// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: calling an uninitialized (zero-initialized) internal
// function type variable reverts at RUNTIME with a DISTINCT panic
// code: Panic(0x51) ("called a zero-initialized variable of internal
// function type"). This is a genuinely new panic code beyond the five
// already confirmed elsewhere in the suite (0x11, 0x12, 0x21, 0x31,
// 0x32). Compiles successfully; the revert only happens if
// callUnsetFunction() is actually invoked.
contract InternalFunctionTypeCallUninitializedExpectedFailAtRuntime {
    function(uint256) internal pure returns (uint256) storedFn; // never assigned

    function callUnsetFunction(uint256 x) public view returns (uint256) {
        return storedFn(x); // reverts with Panic(0x51)
    }
}