// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unlike simply reading .address/.selector on an unset
// external function type (which is safe, see 005), actually CALLING
// one whose address is still address(0) fails at runtime -- though
// the failure mode is different in kind from internal function types'
// Panic(0x51): this is a genuine external call to address(0), which
// typically just returns unsuccessfully (empty code at that address)
// rather than triggering a Solidity-level Panic code. Compiles
// successfully either way; the failure is a runtime call-execution
// outcome, not a compile-time or Panic-coded revert.
contract ExternalFunctionTypeCallUninitializedExpectedFailAtRuntime {
    function(uint256) external pure returns (uint256) storedFn; // never assigned

    function callUnsetFunction(uint256 x) public view returns (uint256) {
        return storedFn(x); // calls address(0) with selector 0x00000000 -- fails as a low-level call, not a Panic
    }
}